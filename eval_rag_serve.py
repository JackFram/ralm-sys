from ralm.retrievers.sparse_retrieval import SparseRetriever

import os
import argparse
import json
import sys
import pickle

import numpy as np
import torch
import transformers
from torch.nn import CrossEntropyLoss
from tqdm import tqdm
from transformers import AutoModelForCausalLM, AutoTokenizer, AutoConfig
from datasets import load_dataset
from time import time

from ralm.file_utils import print_args
from ralm.retrievers.retrieval_factory import add_retriever_args, get_retriever

RETRIEVAL_TYPES = [
    "dense",
    "sparse",
]

class CacheRetriever(object):
    def __init__(self, encoder=None):
        self.corpus = []
        self.features = []
        self.query_encoder = encoder

    def add_item(self, item: str, feature):
        if item not in self.corpus:
            self.corpus.append(item)
            self.features.append(feature)

    def get_top_n(self, query: str, n=1):
        q_fet = self.query_encoder.encode(query).reshape((1, -1))
        k_fet = np.array(self.features)
        # score = np.linalg.norm(k_fet - q_fet, axis=1)
        score = (q_fet @ k_fet.T).reshape(-1)
        ret_indices = np.argsort(score)[-n:]
        ret = []
        for ind in ret_indices:
            ret.append(self.corpus[ind])
        return ret

    def reset(self):
        self.corpus = []
        self.features = []

    def get_score(self, query):
        q_fet = self.query_encoder.encode(query).reshape((1, -1))
        k_fet = np.array(self.features)
        # score = np.linalg.norm(k_fet - q_fet, axis=1)
        score = (q_fet @ k_fet.T).reshape(-1)
        return score

    def __len__(self):
        return len(self.corpus)


def evaluate_logprob_with_retrieved_docs(
        args,
        model,
        tokenizer,
        retriever,
        device,
        encodings,
        begin_loc,
        end_loc,
        ranking_strategy,
        num_tokens_to_rank,
        retrieval_max_length,
        num_docs=4,
        stride=4,
        max_new_token_num=128,
        spec_step=1,
):
    input_ids = encodings.input_ids[:, begin_loc:end_loc].to(device)

    query_len = end_loc - begin_loc

    cache_retriever = CacheRetriever(encoder=retriever.searcher.query_encoder)

    # latency
    retrieval_latency = 0
    inference_latency = 0

    # verification
    total_speculated = 0
    total_verified = 0
    total_rejected = 0

    # retrieval width
    update_retrieval_width = num_docs if not args.cache else args.cache_update_width
    verification_retrieval_width = num_docs if not args.cache or not args.retrieval_always_wide else args.cache_update_width

    # print()
    # print("Query:", tokenizer.batch_decode(input_ids[[0], -32:], skip_special_tokens=True)[0])

    # retrieve initial docs
    start_time = time()
    retrieved_items = retriever.retrieve(tokenizer.batch_decode(input_ids[[0], -32:], skip_special_tokens=True), k=update_retrieval_width)[0]
    retrieval_latency += time() - start_time

    # extract top 1
    doc_text = None
    doc_fet = None
    doc_score = None

    for i in range(len(retrieved_items["retrieved_docs"])):
        retrieved_example = retrieved_items["retrieved_docs"][i]
        
        # new top 1
        if doc_score is None or retrieved_example["score"] > doc_score:
            doc_score = retrieved_example["score"]
            doc_title = retrieved_example["title"] if "title" in retrieved_example else None
            doc_text = retrieved_example["text"]
            if doc_title:
                doc_text = doc_title + "\n" + doc_text
            doc_fet = retrieved_example["feature"]

    ret_time = 1
    infer_time = 0

    # GENERATION LOOP
    while input_ids.shape[1] - query_len <  max_new_token_num and tokenizer.eos_token_id not in input_ids[0]:

        # CACHE UPDATE
        if args.cache:
            for i in range(len(retrieved_items["retrieved_docs"])):
                retrieved_example = retrieved_items["retrieved_docs"][i]

                example_title = retrieved_example["title"] if "title" in retrieved_example else None
                example_text = retrieved_example["text"]
                if example_title:
                    example_text = example_title + "\n" + example_text
                example_fet = retrieved_example["feature"]
                cache_retriever.add_item(example_text, example_fet)

        # encode top 1 and add to cache always
        if doc_text is not None:
            if not args.cache:
                cache_retriever.reset()
            encoded_retrieved_text = tokenizer.encode(doc_text, max_length=retrieval_max_length, truncation=True, return_tensors="pt")
            cache_retriever.add_item(doc_text, doc_fet)

        # SPECULATION
        orig_len = input_ids.shape[1]
        spec_doc_list = []
        spec_doc_score_list = []
        spec_token_num = 0

        # model forward loop
        with torch.no_grad():
            start_time = time()
            for i in range(spec_step):
                # generate this spculation step
                input_ids = torch.cat([encoded_retrieved_text.to(device), input_ids], dim=1)
                query_start_idx = encoded_retrieved_text.shape[1]
                intend_gen_len = max_new_token_num - (input_ids.shape[1] - query_start_idx - query_len)
                cur_spec_token_num = min(intend_gen_len, stride)
                spec_token_num += cur_spec_token_num
                output = model.generate(input_ids, max_new_tokens=cur_spec_token_num)
                input_ids = output[[0], query_start_idx:]
                if input_ids.shape[1] - query_len >= max_new_token_num:
                    # early break for exceeding token limit
                    break
                query_text = tokenizer.decode(input_ids[0, -32:])
                # print(f"query batch in specret: {query_text}")

                # speculate doc for next generation step
                spec_doc_text = cache_retriever.get_top_n(query_text)[0]
                spec_doc_score = cache_retriever.get_score(query_text)
                spec_doc_score_list.append(spec_doc_score)
                spec_doc_list.append(spec_doc_text)
                if spec_doc_text is not None:
                    encoded_retrieved_text = tokenizer.encode(spec_doc_text, max_length=retrieval_max_length,
                                                              truncation=True, return_tensors="pt")
                total_speculated += 1
            single_step_infer_lat = time() - start_time
            # print(f"single step inference latency: {single_step_infer_lat}")
            inference_latency += single_step_infer_lat
            infer_time += 1

        # VERIFICATION
        if spec_token_num <= stride and input_ids.shape[1] - query_len >= max_new_token_num:
            # early break if only generation was with verified document
            break

        query_batch = []
        # generate queries for obtaining ground truth docs
        for i in range(spec_step):
            target_loc = orig_len + stride * (i+1)
            if target_loc > input_ids.shape[1]:
                break
            d = input_ids[0, target_loc-32: target_loc]
            query_batch.append(d)

        # retrieve ground truth docs
        start_time = time()
        batch_query_text = tokenizer.batch_decode(torch.stack(query_batch, dim=0), skip_special_tokens=True)
        retrieved_batch = retriever.retrieve(batch_query_text, k=verification_retrieval_width)
        single_step_ret_lat = time() - start_time
        retrieval_latency += single_step_ret_lat
        # print(f"query batch in verification: {batch_query_text}")
        # print(f"number of query: {len(query_batch)}, single step retrieve latency: {single_step_ret_lat}")

        ret_time += 1

        # verify speculated docs
        spec_end_loc = orig_len
        match_len = 0

        for i in range(len(spec_doc_list)):
            # advance first as first stride is known to be verified
            match_len += 1
            spec_end_loc += stride
            if spec_end_loc > input_ids.shape[1]:
                # early stop for EOS or generation limit
                spec_end_loc = input_ids.shape[1]
                break

            retrieved_items = retrieved_batch[i]
            current_query_text = batch_query_text[i]

            # extract top 1 from ground truth
            gt_doc_text = None
            gt_doc_fet = None
            gt_doc_score = None
            for j in range(len(retrieved_items["retrieved_docs"])):
                retrieved_example = retrieved_items["retrieved_docs"][j]
                
                if gt_doc_score is None or retrieved_example["score"] > gt_doc_score:
                    gt_doc_title = retrieved_example["title"] if "title" in retrieved_example else None
                    gt_doc_text = retrieved_example["text"]
                    gt_doc_fet = retrieved_example["feature"]
                    gt_doc_score = retrieved_example["score"]
                    if gt_doc_title:
                        gt_doc_text = gt_doc_title + "\n" + gt_doc_text

            # print("Query:", current_query_text)
            # for idx in range(len(cache_retriever)):
            #     print(f"cache doc: {cache_retriever.corpus[idx][:30]}, score: {spec_doc_score_list[i][idx]}")
            # print()
            # print(spec_doc_list[i])
            # print(gt_doc_text)

            if spec_doc_list[i] != gt_doc_text:
                # speculation failed, stop verification
                # print("FAILED")
                # print(spec_doc_list[i])
                # print(gt_doc_text)
                total_rejected += 1
                break
            else:
                # speculation succeeded
                # print("success")
                total_verified += 1

        # re-retrieve top k if needed
        if args.cache and not args.retrieval_always_wide:
            start_time = time()
            retrieved_items = retriever.retrieve([current_query_text], k=update_retrieval_width)[0]
            retrieval_latency += time() - start_time
        
        # use last ground truth document in next generation iteration
        doc_text = gt_doc_text
        doc_fet = gt_doc_fet
        doc_score = gt_doc_score
        input_ids = input_ids[[0], :spec_end_loc]
        # print(query_len, query_start_idx, input_ids.shape)
        # print(input_ids, tokenizer.eos_token_id in input_ids, input_ids.shape[1] - query_len)
        # print(f"stride being forwarded: {match_len}")
    total_latency = retrieval_latency + inference_latency
    # print(input_ids[0, query_len:])
    print(
        f"Total Latency: {total_latency}, Inference Latency: {inference_latency}, Retrieval Latency: {retrieval_latency}, "
        f"Infer Time: {infer_time}, Retrieval Time: {ret_time}, "
        f"Total Speculated: {total_speculated}, Total Verified: {total_verified}, Total Rejected: {total_rejected}")
    return total_latency, inference_latency, retrieval_latency


def eval_dataset(
        args,
        model,
        tokenizer,
        retriever,
        dataset,
        device,
        max_length,
        output_dir=None,
        stride=4,
        spec_step=1,
        normalization_level="word",
        retrieval_max_length=256,
        ranking_strategy="first",
        num_docs_to_rank=1,
        num_tokens_to_rank_logprob=16
):
    encodings = tokenizer(dataset, add_special_tokens=False, return_tensors="pt")

    print("Max context length:", max_length)
    # Number of tokens in dataset
    dataset_len = encodings.input_ids.size(1)
    print("Dataset length:", dataset_len)

    if normalization_level == "word":
        counter = dataset.count(" ")
    elif normalization_level == "token":
        counter = dataset_len
    else:
        raise ValueError(f"Unknown normalization_level: '{normalization_level}'")

    print("Normalization factor (num tokens/words..):", counter)

    nlls = []
    prev_end_loc = 0

    idx = 0
    all_token_ppls = []
    all_tokens_to_predict = []
    all_chosen_doc_ids = [None]
    num_inputs_no_retrieval = 0
    request_num = 0
    sum_latency = 0
    sum_inference_latency = 0
    sum_retrieval_latency = 0

    for begin_loc in tqdm(range(0, dataset_len, max_length)):
        end_loc = min(begin_loc + max_length, dataset_len)

        # if idx not in [0, 1] :
        #     idx += 1
        #     continue

        if idx > 50:
            break

        if retriever is not None:

            total_latency, inference_latency, retrieval_latency = evaluate_logprob_with_retrieved_docs(
                args, model, tokenizer, retriever, device, encodings, begin_loc, end_loc,
                ranking_strategy=ranking_strategy,
                num_tokens_to_rank=num_tokens_to_rank_logprob,
                retrieval_max_length=retrieval_max_length,
                num_docs=num_docs_to_rank,
                spec_step=spec_step
            )
            # all_chosen_doc_ids.append(chosen_doc_id)
            request_num += 1
            sum_latency += total_latency
            sum_inference_latency += inference_latency
            sum_retrieval_latency += retrieval_latency
            print(f"Total Latency: {total_latency}, Inference Latency: {inference_latency}, Retrieval Latency: {retrieval_latency}")

        else:
            input_ids = encodings.input_ids[:, begin_loc:end_loc].to(device)
            with torch.no_grad():
                start_time = time()
                outputs = model.generate(inputs=input_ids, max_new_tokens=256, use_cache=True)
                inference_latency = time() - start_time
                total_latency = inference_latency
                retrieval_latency = 0

                request_num += 1
                sum_latency += total_latency
                sum_inference_latency += inference_latency
                sum_retrieval_latency += retrieval_latency
                print(
                    f"Total Latency: {total_latency}, Inference Latency: {inference_latency}, Retrieval Latency: {retrieval_latency}")

        prev_end_loc = end_loc
        idx += 1
        if end_loc == dataset_len:
            break
    # assert retrieval_dataset is None or len(retrieval_dataset) == idx

    print(f"Avg latency: {sum_latency/request_num:.2f} s, Avg Forward latency: {sum_inference_latency/request_num:.2f} s, Avg Retrieval latency: {sum_retrieval_latency/request_num:.2f} s")


def main(args):
    if args.output_dir is not None:
        if not os.path.isdir(args.output_dir):
            os.makedirs(args.output_dir)
    print_args(args, output_dir=args.output_dir)
    device = "cuda" if torch.cuda.is_available() else "cpu"
    device_count = torch.cuda.device_count()
    data_parallel = device_count > 1 and not args.model_parallelism and args.retriever and \
                    args.ranking_strategy in ["logprob", "oracle"]

    config = AutoConfig.from_pretrained(args.model_name)
    model_args = {
        "cache_dir": args.cache_dir
    }
    if args.model_parallelism:
        model_args["device_map"] = "auto"
        model_args["low_cpu_mem_usage"] = True
    if hasattr(config, "torch_dtype") and config.torch_dtype is not None:
        model_args["torch_dtype"] = config.torch_dtype

    model = AutoModelForCausalLM.from_pretrained(args.model_name, **model_args).eval()
    if not args.model_parallelism:
        model = model.to(device)
    tokenizer = AutoTokenizer.from_pretrained(args.model_name)

    # Model context size (e.g., 1024 for GPT-2)
    max_length = args.max_length
    model_max_length = config.n_positions if hasattr(config, "n_positions") else config.max_position_embeddings
    if max_length is None or max_length > model_max_length:
        max_length = model_max_length

    if data_parallel:
        model = torch.nn.DataParallel(model)

    if args.load_from == "hf":
        dataset = load_dataset(args.dataset_path, args.dataset_name, split=args.dataset_split)
        dataset = "".join([x["text"] if x["text"] else " \n" for x in dataset])
    else:
        with open(args.dataset_path, "r") as f:
            dataset = f.read()

    transformers.logging.set_verbosity_error()
    print(f"Creating retriever of type {args.retrieval_type}...")
    if args.retriever:
        retriever = get_retriever(args.retrieval_type, args)
    else:
        retriever = None
    # retrieval_dataset = None
    # if args.retrieved_file is not None:
    #     with open(args.retrieved_file, "r") as f:
    #         retrieval_dataset = json.load(f)

    eval_dataset(
        args,
        model,
        tokenizer,
        retriever,
        dataset,
        device,
        max_length=max_length,
        output_dir=args.output_dir,
        stride=args.stride,
        spec_step=args.spec_step,
        normalization_level=args.normalization_level,
        retrieval_max_length=args.retrieved_max_length,
        ranking_strategy=args.ranking_strategy,
        num_docs_to_rank=args.num_docs_to_rank,
        num_tokens_to_rank_logprob=args.ranking_logprob_past_tokens,
    )


if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    parser.add_argument("--output_dir", type=str)

    # Model params
    parser.add_argument("--model_name", type=str, required=True)
    parser.add_argument("--max_length", type=int, default=None)
    parser.add_argument("--stride", type=int, default=4)
    parser.add_argument("--spec_step", type=int, default=1)
    parser.add_argument("--cache_dir", type=str, default=None)
    parser.add_argument("--model_parallelism", action="store_true")

    # Dataset params
    parser.add_argument("--load_from", type=str, choices=["hf", "file"], default="hf")
    parser.add_argument("--dataset_path", type=str, required=True)
    parser.add_argument("--dataset_name", type=str, default=None)
    parser.add_argument("--dataset_split", type=str, default="test")
    parser.add_argument("--normalization_level", choices=["word", "token"], default="word")

    # retrieval params
    parser.add_argument("--retriever", action="store_true")
    parser.add_argument("--cache", action="store_true")
    parser.add_argument("--cache_update_width", type=int, default=1)
    parser.add_argument("--retrieval_always_wide", action="store_true")
    parser.add_argument("--retrieved_max_length", type=int, default=256)
    parser.add_argument("--ranking_strategy", type=str, choices=["first", "logprob", "oracle", "random"], default="first")
    parser.add_argument("--num_docs_to_rank", type=int, default=1)
    parser.add_argument("--ranking_logprob_past_tokens", type=int, default=16)

    # Retrieval params
    parser.add_argument("--retrieval_type", required=True, choices=RETRIEVAL_TYPES)
    parser.add_argument("--num_docs", type=int, default=1)


    args = parser.parse_args()

    add_retriever_args(args, args.retrieval_type)

    main(args)
