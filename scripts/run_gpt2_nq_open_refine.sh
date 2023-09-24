#!/usr/bin/env bash


### Dense + nq_open, B ########################
#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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
#--dataset_path nq_open \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever


### Dense + nq_open, SpecRet ########################
#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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
#--dataset_path nq_open \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache

### Dense + nq_open, SpecRet+P ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path nq_open \
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

## Latency: 68.06+-0.37609665776049117 s, Forward latency: 4.14+-0.05432566718766912 s, Retrieval latency: 63.92+-0.36131791247626105 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path nq_open \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 20

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path nq_open \
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

## Latency: 7.37+-0.5889161802828513 s, Forward latency: 6.08+-0.5319103333127552 s, Retrieval latency: 1.29+-0.0611695251724912 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path nq_open \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 20

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path nq_open \
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

## Latency: 5.17+-0.05732766786669489 s, Forward latency: 2.66+-0.024252169630651528 s, Retrieval latency: 2.51+-0.03327958079669175 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path nq_open \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 20


### Dense + nq_open, SpecRet+S ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path nq_open \
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

## Latency: 63.48+-0.6975561948506713 s, Forward latency: 5.69+-0.06478405595611371 s, Retrieval latency: 57.80+-0.6433960366762372 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path nq_open \
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
--dataset_path nq_open \
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

## Latency: 4.65+-0.6174529164359261 s, Forward latency: 3.72+-0.4853466445247142 s, Retrieval latency: 0.93+-0.1370959603197233 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path nq_open \
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
--dataset_path nq_open \
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

# Latency: 5.24+-0.13459481621397423 s, Forward latency: 2.42+-0.061522023735318294 s, Retrieval latency: 2.82+-0.07640124194167039 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path nq_open \
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


### Dense + nq_open, SpecRet+A ########################
#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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
#--dataset_path nq_open \
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

### Dense + nq_open, SpecRet+PSA ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path nq_open \
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

## Latency: 60.21+-0.7870924377403129 s, Forward latency: 5.58+-0.09067080404761838 s, Retrieval latency: 55.11+-0.7161183646443599 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path nq_open \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 20 \
#--adapt_spec_step \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path nq_open \
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

## Latency: 4.03+-0.6821737359812926 s, Forward latency: 3.72+-0.6310560430665332 s, Retrieval latency: 0.91+-0.16255282564003387 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path nq_open \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 20 \
#--adapt_spec_step \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path nq_open \
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

## Latency: 4.54+-0.022298797453800416 s, Forward latency: 2.39+-0.019907886942058674 s, Retrieval latency: 3.08+-0.015819847433763704 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path nq_open \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache \
#--cache_update_width 20 \
#--adapt_spec_step \
#--async_retrieval