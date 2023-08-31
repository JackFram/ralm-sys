#!/usr/bin/env bash


### Dense + wikitext, B ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 3 \
--stride 4 \
--spec_step 1 \
--retrieval_type dense \
--max_length 512 \
--retriever

## Latency: 146.59+-2.0264597971112925 s, Forward latency: 5.21+-0.04017268064089792 s, Retrieval latency: 141.38+-2.055109685701427 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type dense \
#--max_length 512 \
#--retriever

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 1 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever

## Latency: 6.27+-0.03837397177953794 s, Forward latency: 5.39+-0.028964606535088644 s, Retrieval latency: 0.89+-0.009466686312274486 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type dense_hnsw \
#--max_length 512 \
#--retriever

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 1 \
--retrieval_type sparse \
--max_length 512 \
--retriever

## Latency: 10.26+-0.19665829054691109 s, Forward latency: 4.11+-0.021997225790452817 s, Retrieval latency: 6.15+-0.17970979590372607 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type sparse \
#--max_length 512 \
#--retriever


### Dense + wikitext, SpecRet ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache

## Latency: 91.09+-2.69310467582396 s, Forward latency: 8.58+-0.1687752776530648 s, Retrieval latency: 82.50+-2.5386102541239253 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense \
#--max_length 512 \
#--retriever \
#--cache

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache

## Latency: 12.10+-0.5504650051173634 s, Forward latency: 10.57+-0.42071940388975204 s, Retrieval latency: 1.53+-0.1299931823794693 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense_hnsw \
#--max_length 512 \
#--retriever \
#--cache

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache

# Latency: 10.04+-0.36264159311682453 s, Forward latency: 6.07+-0.0715393392628018 s, Retrieval latency: 3.97+-0.2969417080593334 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 512 \
#--retriever \
#--cache

### Dense + wikitext, SpecRet+P ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense \
#--max_length 512 \
#--retriever \
#--cache \
#--cache_update_width 256

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense_hnsw \
#--max_length 512 \
#--retriever \
#--cache \
#--cache_update_width 256

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 512 \
#--retriever \
#--cache \
#--cache_update_width 256


### Dense + wikitext, SpecRet+S ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--adapt_spec_step

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense \
#--max_length 512 \
#--retriever \
#--cache \
#--adapt_spec_step

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--adapt_spec_step

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense_hnsw \
#--max_length 512 \
#--retriever \
#--cache \
#--adapt_spec_step

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--adapt_spec_step

# Latency: 8.52+-0.4634544445000406 s, Forward latency: 4.67+-0.10933202979169769 s, Retrieval latency: 3.85+-0.4111845414624981 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 512 \
#--retriever \
#--cache \
#--adapt_spec_step


### Dense + wikitext, SpecRet+A ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--async_retrieval

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense \
#--max_length 512 \
#--retriever \
#--cache \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--async_retrieval

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense_hnsw \
#--max_length 512 \
#--retriever \
#--cache \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--async_retrieval

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 512 \
#--retriever \
#--cache \
#--async_retrieval

### Dense + wikitext, SpecRet+PSA ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense \
#--max_length 512 \
#--retriever \
#--cache \
#--cache_update_width 256 \
#--adapt_spec_step \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense_hnsw \
#--max_length 512 \
#--retriever \
#--cache \
#--cache_update_width 256 \
#--adapt_spec_step \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path wikitext \
#--dataset_name wikitext-103-v1 \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 512 \
#--retriever \
#--cache \
#--cache_update_width 256 \
#--adapt_spec_step \
#--async_retrieval