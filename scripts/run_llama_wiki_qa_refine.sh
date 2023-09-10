#!/usr/bin/env bash


### Dense + wiki_qa, B ########################
#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 82.23+-1.9570172679963904 s, Forward latency: 14.71+-0.17584607123433618 s, Retrieval latency: 67.52+-1.782786406320235 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 20.63+-0.48061045094651694 s, Forward latency: 17.72+-0.41613984109036245 s, Retrieval latency: 2.90+-0.06501077550343368 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 12.83+-0.21076251700514598 s, Forward latency: 10.00+-0.12231725555925319 s, Retrieval latency: 2.83+-0.096002151015685 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 81.89+-4.6968884744320984 s, Forward latency: 12.80+-0.6402245364633405 s, Retrieval latency: 69.09+-4.087654272268542 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 9.48+-0.058362199899738364 s, Forward latency: 8.33+-0.047422844171505586 s, Retrieval latency: 1.15+-0.01275547656035539 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

# Latency: 10.83+-0.18153799901978138 s, Forward latency: 6.90+-0.0507423949113961 s, Retrieval latency: 3.93+-0.15731895760893735 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 79.06+-3.614696113187315 s, Forward latency: 16.04+-0.4940913031079461 s, Retrieval latency: 64.52+-3.0737379525147204 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 14.06+-0.08108510559050863 s, Forward latency: 11.90+-0.1268571404989189 s, Retrieval latency: 4.44+-0.046144717687087 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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

## Latency: 9.46+-0.17720149661802467 s, Forward latency: 7.58+-0.04344616783378848 s, Retrieval latency: 4.34+-0.15587457069216815 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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