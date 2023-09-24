#!/usr/bin/env bash


### Dense + nq_open, B ########################
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
--retriever

## Latency: 144.22+-1.1748884666705712 s, Forward latency: 3.37+-0.014812292773172676 s, Retrieval latency: 140.85+-1.1774279331856325 s

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
--retriever

## Latency: 4.38+-0.6086027758607336 s, Forward latency: 3.52+-0.47418904582171356 s, Retrieval latency: 0.86+-0.13603002581676557 s

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
--retriever

## Latency: 7.23+-0.11305820178495103 s, Forward latency: 2.09+-0.04768510817793237 s, Retrieval latency: 5.14+-0.06847517715129699 s

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
--cache

## Latency: 70.79+-1.2777280863119345 s, Forward latency: 4.58+-0.06351968107095349 s, Retrieval latency: 66.21+-1.2151138868147795 s

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
--cache

## Latency: 6.41+-0.7147916896940077 s, Forward latency: 5.31+-0.5694698508967803 s, Retrieval latency: 1.09+-0.14672013073569193 s

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
--cache

# Latency: 5.34+-0.11662572469811527 s, Forward latency: 2.62+-0.039467996401167826 s, Retrieval latency: 2.72+-0.080764976927826 s

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
--cache_update_width 256

## Latency: 67.10+-0.5974103864876706 s, Forward latency: 4.32+-0.02410726195318252 s, Retrieval latency: 62.78+-0.5799514079744867 s

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
#--cache_update_width 256

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
--cache_update_width 256

## Latency: 5.64+-0.7402927053646787 s, Forward latency: 4.66+-0.5914290350856133 s, Retrieval latency: 0.98+-0.14928340131412135 s

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
#--cache_update_width 256

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
--cache_update_width 256

## Latency: 6.76+-0.272647590482576 s, Forward latency: 4.17+-0.18920944265748338 s, Retrieval latency: 2.60+-0.08419786646778078 s

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
#--cache_update_width 256


### Dense + nq_open, SpecRet+S ########################
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
--adapt_spec_step

## Latency: 61.79+-0.8727904604636297 s, Forward latency: 5.88+-0.0448411174339823 s, Retrieval latency: 55.92+-0.8307857860914287 s

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
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

## Latency: 4.14+-0.5058813833190239 s, Forward latency: 3.36+-0.38974943362901654 s, Retrieval latency: 0.78+-0.11613265269469136 s

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
--spec_step 3 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

# Latency: 5.30+-0.07783515447982801 s, Forward latency: 2.56+-0.029358906162059942 s, Retrieval latency: 2.74+-0.0489012452086644 s

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
--async_retrieval

## Latency: 71.00+-0.7471836207681404 s, Forward latency: 4.64+-0.08884333066539835 s, Retrieval latency: 67.07+-0.676647433254869 s

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
--async_retrieval

## Latency: 5.70+-0.7065587371211163 s, Forward latency: 4.99+-0.6027113874277639 s, Retrieval latency: 1.03+-0.15459764712757623 s

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
--async_retrieval

## Latency: 4.76+-0.14952932807292718 s, Forward latency: 2.60+-0.06986321326099201 s, Retrieval latency: 2.61+-0.09412255209655053 s

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
--spec_step 3 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 56.26+-0.9545807206672214 s, Forward latency: 5.43+-0.05695927435552221 s, Retrieval latency: 51.28+-0.9206087777432419 s

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
#--cache_update_width 256 \
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
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 3.40+-0.004303646109801018 s, Forward latency: 3.12+-0.00328229360570263 s, Retrieval latency: 0.74+-0.00263312671082869 s

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
#--cache_update_width 256 \
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
--spec_step 3 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 5.54+-0.02811841700727783 s, Forward latency: 3.68+-0.035966465434798964 s, Retrieval latency: 3.48+-0.012128258268380545 s

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
#--cache_update_width 256 \
#--adapt_spec_step \
#--async_retrieval