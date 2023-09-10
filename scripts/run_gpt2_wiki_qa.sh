#!/usr/bin/env bash


### Dense + wiki_qa, B ########################
#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 0 \
#--trial_num 3 \
#--stride 4 \
#--spec_step 1 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever

## Latency: 142.14+-0.9563621046932412 s, Forward latency: 3.35+-0.010179316739618522 s, Retrieval latency: 138.79+-0.9464759137825124 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 0 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 1 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever

## Latency: 4.48+-0.1117924468920217 s, Forward latency: 3.61+-0.08716074040258391 s, Retrieval latency: 0.87+-0.024638376794878986 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 0 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 1 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever

## Latency: 7.41+-1.3360041568006062 s, Forward latency: 2.38+-0.24709095079443363 s, Retrieval latency: 5.03+-1.0907467524674197 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever


### Dense + wiki_qa, SpecRet ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache

## Latency: 69.82+-0.22541434610927 s, Forward latency: 4.39+-0.07254579676168077 s, Retrieval latency: 65.42+-0.27444192354994745 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever \
#--cache

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache

## Latency: 7.26+-0.07659719028852169 s, Forward latency: 6.01+-0.05843010519308686 s, Retrieval latency: 1.24+-0.02249281282666829 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever \
#--cache

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache

# Latency: 5.18+-0.13746164676321018 s, Forward latency: 2.55+-0.04307013922173696 s, Retrieval latency: 2.63+-0.09445325043361012 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache

### Dense + wiki_qa, SpecRet+P ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 256

## Latency: 66.14+-0.39487225316924746 s, Forward latency: 4.08+-0.024852483110933528 s, Retrieval latency: 62.06+-0.37038143145447533 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 256

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 256

## Latency: 6.65+-0.07276051036099163 s, Forward latency: 5.50+-0.06874823176549366 s, Retrieval latency: 1.15+-0.03835385847582049 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 256

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 256

## Latency: 6.88+-0.666344335860455 s, Forward latency: 4.16+-0.37390728502262754 s, Retrieval latency: 2.72+-0.2924965543452465 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 256


### Dense + wiki_qa, SpecRet+S ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

## Latency: 60.09+-0.5478850128616531 s, Forward latency: 5.63+-0.0764675490720491 s, Retrieval latency: 54.46+-0.4887698587180851 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever \
#--cache \
#--adapt_spec_step

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

## Latency: 4.94+-0.2894789559478095 s, Forward latency: 3.98+-0.23723898082203612 s, Retrieval latency: 0.96+-0.060245420589191544 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever \
#--cache \
#--adapt_spec_step

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

# Latency: 5.82+-0.9160125908808744 s, Forward latency: 2.73+-0.3312427441749296 s, Retrieval latency: 3.09+-0.5848168272736672 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache \
#--adapt_spec_step


### Dense + wiki_qa, SpecRet+A ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache \
--async_retrieval

## Latency: 69.92+-1.056193837759935 s, Forward latency: 4.33+-0.07169973755743517 s, Retrieval latency: 66.27+-1.0384617909008507 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever \
#--cache \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache \
--async_retrieval

## Latency: 6.50+-0.5466259984186265 s, Forward latency: 5.63+-0.427686538348495 s, Retrieval latency: 1.24+-0.17301663735230174 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever \
#--cache \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache \
--async_retrieval

## Latency: 5.34+-0.8908068495290679 s, Forward latency: 2.72+-0.3003277750705263 s, Retrieval latency: 3.04+-0.643340786354065 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache \
#--async_retrieval

### Dense + wiki_qa, SpecRet+PSA ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 53.95+-0.7240426715200169 s, Forward latency: 5.20+-0.039144747170552545 s, Retrieval latency: 49.18+-0.6860295283522437 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 256 \
#--adapt_spec_step \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 4.01+-0.21821448191269813 s, Forward latency: 3.67+-0.19879524195398468 s, Retrieval latency: 0.88+-0.04952923362083488 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 256 \
#--adapt_spec_step \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 6.66+-1.2598860242851657 s, Forward latency: 4.23+-0.7258463750908322 s, Retrieval latency: 4.03+-0.783349097253592 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 256 \
#--adapt_spec_step \
#--async_retrieval