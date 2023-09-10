#!/usr/bin/env bash


### Dense + nq_open, B ########################
#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 97.14+-1.8956310321652676 s, Forward latency: 19.92+-0.2906687559016578 s, Retrieval latency: 77.22+-1.6911171259679607 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 27.38+-3.3923422191415162 s, Forward latency: 22.73+-2.4398281571973826 s, Retrieval latency: 4.65+-0.9538759033967021 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 12.48+-0.22107126946594505 s, Forward latency: 9.78+-0.15660670583427735 s, Retrieval latency: 2.70+-0.12006485246922187 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 87.06+-1.9149421592291322 s, Forward latency: 12.87+-0.21305689517331222 s, Retrieval latency: 74.18+-1.7067336271258167 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 8.50+-0.14454193796741543 s, Forward latency: 7.60+-0.09935990069329526 s, Retrieval latency: 0.91+-0.04747160304392976 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

# Latency: 10.49+-0.23739164071296395 s, Forward latency: 6.81+-0.10284742859575259 s, Retrieval latency: 3.69+-0.14164951310785823 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 95.54+-3.362559655702957 s, Forward latency: 20.35+-0.5668524966729307 s, Retrieval latency: 76.96+-2.7943556757794474 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 14.59+-2.0406757697989057 s, Forward latency: 12.42+-1.6139451675551237 s, Retrieval latency: 4.41+-0.8745131968924799 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 9.64+-0.08022680604270481 s, Forward latency: 7.70+-0.04008854904161213 s, Retrieval latency: 4.64+-0.08248935292586286 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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