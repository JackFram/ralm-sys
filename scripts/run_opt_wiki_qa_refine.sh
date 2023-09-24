#!/usr/bin/env bash


### Dense + wiki_qa, B ########################
#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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

## Latency: 144.39+-1.7132945668207984 s, Forward latency: 6.99+-0.061102060511955804 s, Retrieval latency: 137.40+-1.6859982918610565 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 8.06+-0.07480109232542433 s, Forward latency: 7.19+-0.06827344819869399 s, Retrieval latency: 0.86+-0.007243167214052253 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 10.75+-0.31912317281923913 s, Forward latency: 5.98+-0.010776445725150722 s, Retrieval latency: 4.77+-0.32554849398076785 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 81.05+-0.789503909430123 s, Forward latency: 10.56+-0.12704869331008065 s, Retrieval latency: 70.48+-0.6627613515420923 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 14.10+-0.31612233827142877 s, Forward latency: 12.80+-0.29058451812099717 s, Retrieval latency: 1.30+-0.026700551339532943 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

# Latency: 11.47+-0.1739124506050518 s, Forward latency: 8.52+-0.14384970398393754 s, Retrieval latency: 2.96+-0.04947944252114551 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 83.94+-1.1129823051761627 s, Forward latency: 10.57+-0.17430716722137438 s, Retrieval latency: 73.37+-0.9392360711620074 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 14.25+-0.3986749565977464 s, Forward latency: 12.82+-0.35498071805439635 s, Retrieval latency: 1.44+-0.04397142283093046 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 11.27+-0.14529612485005808 s, Forward latency: 8.38+-0.08612721274727339 s, Retrieval latency: 2.89+-0.11555980839728007 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 85.19+-2.269031781693118 s, Forward latency: 12.20+-0.41502727898495184 s, Retrieval latency: 72.99+-1.8555684343484928 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 8.14+-0.19326285899754253 s, Forward latency: 7.22+-0.13544908006310966 s, Retrieval latency: 0.92+-0.05851647216989773 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

# Latency: 10.38+-0.2807331285299882 s, Forward latency: 6.58+-0.06248461621624807 s, Retrieval latency: 3.80+-0.22410874450667903 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 90.49+-6.125751295280972 s, Forward latency: 12.42+-1.25419169743896 s, Retrieval latency: 79.18+-4.989003783969588 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 13.90+-0.36187679413232887 s, Forward latency: 12.74+-0.3161097301687017 s, Retrieval latency: 1.42+-0.0331773258676478 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 10.88+-0.2650184660655696 s, Forward latency: 8.62+-0.2254215734730787 s, Retrieval latency: 2.97+-0.04158422067496376 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 81.94+-0.9140037680568408 s, Forward latency: 12.11+-0.08285472668011651 s, Retrieval latency: 70.78+-0.9439145932731569 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 7.89+-0.22400216688874475 s, Forward latency: 7.35+-0.16576773392324917 s, Retrieval latency: 1.08+-0.11986109442715182 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 8.28+-0.18466344046310898 s, Forward latency: 6.20+-0.052768992339123945 s, Retrieval latency: 4.40+-0.13337884097376937 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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