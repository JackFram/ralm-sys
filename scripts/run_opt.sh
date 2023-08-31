#!/usr/bin/env bash


### Dense + wikitext, B ########################
python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 3 \
--stride 4 \
--spec_step 1 \
--retrieval_type dense \
--max_length 512 \
--retriever

# Latency: Latency: 137.22+-1.5715422641611463 s, Forward latency: 3.99+-0.0161923660502156 s, Retrieval latency: 133.23+-1.564426026459477 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 1 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever

## Latency: 4.86+-0.33549921757695345 s, Forward latency: 4.04+-0.2748291830414109 s, Retrieval latency: 0.82+-0.06432734717585503 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 1 \
--retrieval_type sparse \
--max_length 512 \
--retriever

## Latency: 9.00+-0.5704458241135437 s, Forward latency: 3.10+-0.09363791117921035 s, Retrieval latency: 5.90+-0.47864578769794025 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache

## Latency: 83.43+-2.562383211702873 s, Forward latency: 6.48+-0.16936237755672856 s, Retrieval latency: 76.94+-2.395370110315731 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validat
       ion \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache

## Latency: 8.27+-0.15653139919455997 s, Forward latency: 7.07+-0.11123414943057407 s, Retrieval latency: 1.20+-0.045637319253325793 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache

## Latency: 9.45+-0.7673475975614393 s, Forward latency: 4.83+-0.1710960608277031 s, Retrieval latency: 4.62+-0.5971046956754592 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--adapt_spec_step

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--adapt_spec_step

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--adapt_spec_step

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--async_retrieval

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--async_retrieval

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--async_retrieval

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
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
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
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
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
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
#--model_name facebook/opt-1.3b \
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