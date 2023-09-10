#!/usr/bin/env bash


### Dense + web_questions, B ########################
python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
--dataset_path web_questions \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 3 \
--stride 4 \
--spec_step 1 \
--retrieval_type dense \
--max_length 128 \
--retriever

## Latency: 146.52+-1.9272179572236454 s, Forward latency: 6.98+-0.007740714526122532 s, Retrieval latency: 139.54+-1.933423948733668 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever

python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
--dataset_path web_questions \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 1 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever

## Latency: 7.97+-0.06301570383356077 s, Forward latency: 7.11+-0.052952057571694446 s, Retrieval latency: 0.86+-0.011388798821622505 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever

python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
--dataset_path web_questions \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 1 \
--retrieval_type sparse \
--max_length 128 \
--retriever

## Latency: 10.55+-0.07245463798394786 s, Forward latency: 5.89+-0.047691387478389476 s, Retrieval latency: 4.67+-0.07196639419347442 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever


### Dense + web_questions, SpecRet ########################
python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
--dataset_path web_questions \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache

## Latency: 87.20+-1.8304597280491746 s, Forward latency: 10.94+-0.19146222392712312 s, Retrieval latency: 76.26+-1.6435051131942844 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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
--model_name meta-llama/Llama-2-7b-hf \
--dataset_path web_questions \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache

## Latency: 13.44+-0.37540151390163784 s, Forward latency: 12.16+-0.339741552912616 s, Retrieval latency: 1.28+-0.03735757937093578 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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
--model_name meta-llama/Llama-2-7b-hf \
--dataset_path web_questions \
--dataset_split validation \
--output_dir ./results \
--gpu_id 1 \
--trial_num 5 \
--stride 4 \
--spec_step 3 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache

# Latency: 11.02+-0.31818711699179236 s, Forward latency: 8.21+-0.19069163060389233 s, Retrieval latency: 2.81+-0.14209414135674842 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
#
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 4 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever \
#--cache

### Dense + web_questions, SpecRet+P ########################
python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
--dataset_path web_questions \
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
--cache_update_width 256

## Latency: 94.15+-1.6009502554063049 s, Forward latency: 19.37+-0.41717290562221065 s, Retrieval latency: 74.78+-1.2373995823680999 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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
--dataset_path web_questions \
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
--cache_update_width 256

## Latency: 26.44+-3.111548095300848 s, Forward latency: 21.79+-2.2938142928688663 s, Retrieval latency: 4.64+-0.8206310271159845 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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
--dataset_path web_questions \
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
--cache_update_width 256

## Latency: 13.35+-0.8163669140234814 s, Forward latency: 10.01+-0.4056945531667077 s, Retrieval latency: 3.34+-0.424778138411866 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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


### Dense + web_questions, SpecRet+S ########################
python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
--dataset_path web_questions \
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
--adapt_spec_step

## Latency: 84.85+-2.3502292471055504 s, Forward latency: 12.59+-0.20672002739114384 s, Retrieval latency: 72.26+-2.1459022366375042 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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
--dataset_path web_questions \
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
--adapt_spec_step

## Latency: 8.60+-0.06564322082832348 s, Forward latency: 7.60+-0.043215472245205895 s, Retrieval latency: 1.00+-0.03319105951077234 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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
--dataset_path web_questions \
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
--adapt_spec_step

# Latency: 10.30+-0.13796470331557897 s, Forward latency: 6.75+-0.05434781704908004 s, Retrieval latency: 3.56+-0.09060048178894892 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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


### Dense + web_questions, SpecRet+A ########################
python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
--dataset_path web_questions \
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
--async_retrieval

## Latency: 85.74+-1.9456388665357232 s, Forward latency: 10.91+-0.13267200077536878 s, Retrieval latency: 75.80+-1.7892406068696647 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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
--model_name meta-llama/Llama-2-7b-hf \
--dataset_path web_questions \
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
--async_retrieval

## Latency: 13.28+-0.17767210287876872 s, Forward latency: 12.23+-0.1733229755201617 s, Retrieval latency: 1.29+-0.01621748154955401 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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
--model_name meta-llama/Llama-2-7b-hf \
--dataset_path web_questions \
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
--async_retrieval

## Latency: 10.66+-0.12037866903162557 s, Forward latency: 8.43+-0.09056789749689967 s, Retrieval latency: 2.91+-0.07891911944664473 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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

### Dense + web_questions, SpecRet+PSA ########################
python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
--dataset_path web_questions \
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
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 87.34+-4.637677672708304 s, Forward latency: 18.89+-0.9779857965781327 s, Retrieval latency: 70.18+-3.714321826878325 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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
--dataset_path web_questions \
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
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 14.96+-1.3490984429851196 s, Forward latency: 12.81+-1.1163365508605694 s, Retrieval latency: 4.78+-0.6184784064786246 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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
--dataset_path web_questions \
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
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 10.42+-0.7480661799060846 s, Forward latency: 8.10+-0.42496799308973104 s, Retrieval latency: 5.23+-0.5594922679705225 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path web_questions \
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