#!/usr/bin/env bash


### Dense + web_questions, B ########################
#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path web_questions \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 3 \
#--stride 4 \
#--spec_step 1 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever

## Latency: 146.52+-1.9272179572236454 s, Forward latency: 6.98+-0.007740714526122532 s, Retrieval latency: 139.54+-1.933423948733668 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path web_questions \
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
#--dataset_path web_questions \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 1 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever

## Latency: 7.97+-0.06301570383356077 s, Forward latency: 7.11+-0.052952057571694446 s, Retrieval latency: 0.86+-0.011388798821622505 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path web_questions \
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
#--dataset_path web_questions \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 1 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever

## Latency: 10.55+-0.07245463798394786 s, Forward latency: 5.89+-0.047691387478389476 s, Retrieval latency: 4.67+-0.07196639419347442 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path web_questions \
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

## Latency: 87.20+-1.8304597280491746 s, Forward latency: 10.94+-0.19146222392712312 s, Retrieval latency: 76.26+-1.6435051131942844 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path web_questions \
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

## Latency: 13.44+-0.37540151390163784 s, Forward latency: 12.16+-0.339741552912616 s, Retrieval latency: 1.28+-0.03735757937093578 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path web_questions \
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

# Latency: 11.02+-0.31818711699179236 s, Forward latency: 8.21+-0.19069163060389233 s, Retrieval latency: 2.81+-0.14209414135674842 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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
--cache_update_width 20

## Latency: 84.23+-0.3724108292627405 s, Forward latency: 10.56+-0.047126174163530724 s, Retrieval latency: 73.67+-0.32528732967392937 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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
--cache_update_width 20

## Latency: 13.45+-0.2839540788721633 s, Forward latency: 12.10+-0.2532162219000207 s, Retrieval latency: 1.36+-0.0319183273620084 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
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
--cache_update_width 20

## Latency: 11.04+-0.22422512635046288 s, Forward latency: 8.27+-0.14822203898312275 s, Retrieval latency: 2.77+-0.12960081622327937 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path web_questions \
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

## Latency: 88.95+-0.9935877305215245 s, Forward latency: 12.62+-0.1012168939654808 s, Retrieval latency: 76.33+-0.985722762170671 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path web_questions \
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

## Latency: 8.08+-0.07795173454802423 s, Forward latency: 7.15+-0.06418641914384947 s, Retrieval latency: 0.93+-0.016113063227568804 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path web_questions \
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

# Latency: 10.19+-0.1933310021268212 s, Forward latency: 6.48+-0.059907716341198236 s, Retrieval latency: 3.71+-0.1507358811479094 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path web_questions \
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

## Latency: 85.74+-1.9456388665357232 s, Forward latency: 10.91+-0.13267200077536878 s, Retrieval latency: 75.80+-1.7892406068696647 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path web_questions \
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

## Latency: 13.28+-0.17767210287876872 s, Forward latency: 12.23+-0.1733229755201617 s, Retrieval latency: 1.29+-0.01621748154955401 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
#--dataset_path web_questions \
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

## Latency: 10.66+-0.12037866903162557 s, Forward latency: 8.43+-0.09056789749689967 s, Retrieval latency: 2.91+-0.07891911944664473 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path web_questions \
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

## Latency: 85.81+-1.8209944315470203 s, Forward latency: 12.34+-0.26190467231983494 s, Retrieval latency: 74.40+-1.5391183671559023 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path web_questions \
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

## Latency: 7.84+-0.1522240399643951 s, Forward latency: 7.32+-0.1294600465894575 s, Retrieval latency: 1.12+-0.05852521148326578 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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
--model_name facebook/opt-1.3b \
--dataset_path web_questions \
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

## Latency: 8.18+-0.10971554501686263 s, Forward latency: 6.13+-0.020525724341983815 s, Retrieval latency: 4.32+-0.11341655489729895 s

#python -u eval_rag_serve.py \
#--model_name facebook/opt-1.3b \
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