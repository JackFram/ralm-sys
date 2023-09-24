#!/usr/bin/env bash


### Dense + nq_open, B ########################
#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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

## Latency: 149.76+-0.9515843693834897 s, Forward latency: 7.07+-0.04889493706329463 s, Retrieval latency: 142.69+-0.9237644200550873 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 8.11+-0.1114237840446246 s, Forward latency: 7.25+-0.08647151663194479 s, Retrieval latency: 0.87+-0.02680376731850136 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 10.72+-0.10539454687194641 s, Forward latency: 5.95+-0.0642618767356239 s, Retrieval latency: 4.77+-0.10158791045177744 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 86.92+-1.3049554499129468 s, Forward latency: 11.00+-0.13725137581346358 s, Retrieval latency: 75.92+-1.168200760400097 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 14.35+-0.1560501252120535 s, Forward latency: 13.00+-0.12854656804615133 s, Retrieval latency: 1.34+-0.028171569668690184 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 11.10+-0.27638916875422487 s, Forward latency: 8.31+-0.13259318482550625 s, Retrieval latency: 2.79+-0.16556896751022637 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 84.74+-0.4783233397111333 s, Forward latency: 10.58+-0.06629250928815604 s, Retrieval latency: 74.17+-0.4130033971916841 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 14.08+-0.3205809208433646 s, Forward latency: 12.62+-0.2858947766237489 s, Retrieval latency: 1.46+-0.03596216670844348 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 10.69+-0.15566503320268446 s, Forward latency: 7.89+-0.05453024300810783 s, Retrieval latency: 2.80+-0.11502423165186126 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 89.45+-1.2873579623531268 s, Forward latency: 12.64+-0.08702472914802607 s, Retrieval latency: 76.81+-1.201524734128914 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 8.08+-0.07225830055539026 s, Forward latency: 7.13+-0.05813479514003515 s, Retrieval latency: 0.95+-0.020205523518826603 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

# Latency: 9.95+-0.047817412626573755 s, Forward latency: 6.34+-0.05480960001667616 s, Retrieval latency: 3.61+-0.045845357000814164 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 84.37+-0.6240580335385202 s, Forward latency: 10.80+-0.05822073896006744 s, Retrieval latency: 74.55+-0.5636247934936971 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 13.72+-0.14749200892324296 s, Forward latency: 12.65+-0.12086671396885637 s, Retrieval latency: 1.29+-0.03087365745522169 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#--model_name facebook/opt-1.3b \
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

## Latency: 10.56+-0.20271771767514907 s, Forward latency: 8.39+-0.10341605937217116 s, Retrieval latency: 2.95+-0.17947666002897414 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 85.47+-1.7011619591585498 s, Forward latency: 12.38+-0.10595686940314215 s, Retrieval latency: 74.02+-1.7094523980446212 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 7.90+-0.12633685897951838 s, Forward latency: 7.32+-0.10918124338759604 s, Retrieval latency: 1.16+-0.06271732701187561 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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

## Latency: 8.26+-0.14571005224986278 s, Forward latency: 6.08+-0.046431933735996155 s, Retrieval latency: 4.60+-0.17452194052848533 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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