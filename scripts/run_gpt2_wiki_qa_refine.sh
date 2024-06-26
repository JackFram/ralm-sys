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
#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 0 \
#--trial_num 3 \
#--stride 4 \
#--spec_step 3 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever \
#--cache

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

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 0 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 3 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever \
#--cache

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

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 0 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 3 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache

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
--cache_update_width 20

## Latency: 68.22+-0.18782661223856637 s, Forward latency: 4.27+-0.03684711290775506 s, Retrieval latency: 63.95+-0.1510915298703534 s

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
--cache_update_width 20

## Latency: 6.92+-0.10120199053730514 s, Forward latency: 5.67+-0.08860318750673103 s, Retrieval latency: 1.25+-0.014594082896263674 s

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
--cache_update_width 20

## Latency: 5.23+-0.23512005851359036 s, Forward latency: 2.61+-0.08808659971063411 s, Retrieval latency: 2.62+-0.14704939144710047 s

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
--spec_step 1 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

## Latency: 62.72+-0.4805022506355928 s, Forward latency: 5.47+-0.03564470388442374 s, Retrieval latency: 57.25+-0.4551686359820786 s

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
--spec_step 1 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

## Latency: 4.59+-0.28729419704443926 s, Forward latency: 3.72+-0.2534741242304527 s, Retrieval latency: 0.87+-0.03623281269178978 s

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
--spec_step 1 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

# Latency: 5.62+-0.9672593622585209 s, Forward latency: 2.58+-0.3438175687888953 s, Retrieval latency: 3.04+-0.6234678259423776 s

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
#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 0 \
#--trial_num 3 \
#--stride 4 \
#--spec_step 3 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever \
#--cache \
#--async_retrieval

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

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 0 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 3 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever \
#--cache \
#--async_retrieval

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

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wiki_qa \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 0 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 3 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache \
#--async_retrieval

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
--spec_step 1 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 20 \
--adapt_spec_step \
--async_retrieval

## Latency: 58.35+-0.31997250856167964 s, Forward latency: 5.31+-0.03290253298450683 s, Retrieval latency: 53.48+-0.2989013668076626 s

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
--spec_step 1 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 20 \
--adapt_spec_step \
--async_retrieval

## Latency: 4.24+-0.1421447111375271 s, Forward latency: 3.92+-0.13938425632658996 s, Retrieval latency: 0.92+-0.032343972890480674 s

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
--spec_step 1 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 20 \
--adapt_spec_step \
--async_retrieval

## Latency: 4.49+-0.0937771080449505 s, Forward latency: 2.33+-0.03423576971866768 s, Retrieval latency: 2.99+-0.0693528187109897 s

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