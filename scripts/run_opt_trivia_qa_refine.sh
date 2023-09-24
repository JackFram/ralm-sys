#!/usr/bin/env bash


### Dense + wikitext, B ########################
#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 3 \
#--stride 4 \
#--spec_step 1 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever

## Latency: 147.76+-2.8003093508659456 s, Forward latency: 7.16+-0.019016542380743236 s, Retrieval latency: 140.60+-2.8106175335422092 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 1 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever

## Latency: 8.68+-0.1047241484692095 s, Forward latency: 7.63+-0.090898668251698 s, Retrieval latency: 1.06+-0.0170062308170559 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 1 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever

## Latency: 11.06+-0.2514447324317352 s, Forward latency: 6.04+-0.034551543552591824 s, Retrieval latency: 5.02+-0.25442629953798757 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever


### Dense + wikitext, SpecRet ########################
#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 3 \
#--stride 4 \
#--spec_step 3 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever \
#--cache

## Latency: 90.44+-8.016504918634833 s, Forward latency: 12.43+-1.2904246306007936 s, Retrieval latency: 78.01+-6.7652113301995715 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
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
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 3 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever \
#--cache

## Latency: 14.23+-0.3573774920090918 s, Forward latency: 12.79+-0.3186719951671124 s, Retrieval latency: 1.44+-0.03888446429835448 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
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
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 3 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache

# Latency: 10.79+-0.20903272074361817 s, Forward latency: 8.04+-0.09176543879267866 s, Retrieval latency: 2.75+-0.18343547653407422 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache

### Dense + wikitext, SpecRet+P ########################
python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path trivia_qa \
--dataset_name rc \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 20

## Latency: 81.86+-0.7657852861740794 s, Forward latency: 10.41+-0.11412921459287349 s, Retrieval latency: 71.45+-0.6521488771902965 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
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
--dataset_path trivia_qa \
--dataset_name rc \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 20

## Latency: 14.21+-0.3036432984864429 s, Forward latency: 12.76+-0.27434968413086236 s, Retrieval latency: 1.44+-0.02993763694040956 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
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
--dataset_path trivia_qa \
--dataset_name rc \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 20

## Latency: 10.66+-0.23700390701833846 s, Forward latency: 8.04+-0.09540831375125369 s, Retrieval latency: 2.62+-0.18304896016454794 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 256


### Dense + wikitext, SpecRet+S ########################
python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path trivia_qa \
--dataset_name rc \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 3 \
--stride 4 \
--spec_step 1 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

## Latency: 84.28+-2.93988453280129 s, Forward latency: 11.99+-0.28312023587880436 s, Retrieval latency: 72.28+-2.672796204589914 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
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
--dataset_path trivia_qa \
--dataset_name rc \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 1 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

## Latency: 8.16+-0.09966282290644442 s, Forward latency: 7.20+-0.08332370731805508 s, Retrieval latency: 0.96+-0.027852311266824973 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
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
--dataset_path trivia_qa \
--dataset_name rc \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 1 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

# Latency: 10.18+-0.0877560909082933 s, Forward latency: 6.43+-0.02769151354992203 s, Retrieval latency: 3.74+-0.07795372580140514 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache \
#--adapt_spec_step


### Dense + wikitext, SpecRet+A ########################
#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 3 \
#--stride 4 \
#--spec_step 3 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever \
#--cache \
#--async_retrieval

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
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
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 3 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever \
#--cache \
#--async_retrieval

## Latency: 18.35+-1.1178822732456304 s, Forward latency: 16.50+-0.9436333423308263 s, Retrieval latency: 2.19+-0.22169315131832015 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
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
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 3 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache \
#--async_retrieval

## Latency: 10.16+-0.18775015848531493 s, Forward latency: 8.06+-0.09979344890848892 s, Retrieval latency: 2.89+-0.14763331725046944 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache \
#--async_retrieval

### Dense + wikitext, SpecRet+PSA ########################
python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path trivia_qa \
--dataset_name rc \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
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

## Latency: 82.03+-2.7398756477835566 s, Forward latency: 12.00+-0.22612486674241747 s, Retrieval latency: 70.98+-2.557707528829578 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
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
--dataset_path trivia_qa \
--dataset_name rc \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
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

## Latency: 7.91+-0.03873930449013175 s, Forward latency: 7.35+-0.035455502282286264 s, Retrieval latency: 1.14+-0.024710051908193406 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
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
--dataset_path trivia_qa \
--dataset_name rc \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
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

## Latency: 8.09+-0.1865906611880987 s, Forward latency: 6.14+-0.08953771211415568 s, Retrieval latency: 4.41+-0.14062663626193833 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path trivia_qa \
#--dataset_name rc \
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