#!/usr/bin/env bash


### Dense + web_questions, B ########################
#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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

## Latency: 142.14+-0.9563621046932412 s, Forward latency: 3.35+-0.010179316739618522 s, Retrieval latency: 138.79+-0.9464759137825124 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--model_name gpt2-medium \
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

## Latency: 4.48+-0.1117924468920217 s, Forward latency: 3.61+-0.08716074040258391 s, Retrieval latency: 0.87+-0.024638376794878986 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--model_name gpt2-medium \
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

## Latency: 7.41+-1.3360041568006062 s, Forward latency: 2.38+-0.24709095079443363 s, Retrieval latency: 5.03+-1.0907467524674197 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--model_name gpt2-medium \
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

## Latency: 69.82+-0.22541434610927 s, Forward latency: 4.39+-0.07254579676168077 s, Retrieval latency: 65.42+-0.27444192354994745 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--model_name gpt2-medium \
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

## Latency: 7.26+-0.07659719028852169 s, Forward latency: 6.01+-0.05843010519308686 s, Retrieval latency: 1.24+-0.02249281282666829 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--model_name gpt2-medium \
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

# Latency: 5.18+-0.13746164676321018 s, Forward latency: 2.55+-0.04307013922173696 s, Retrieval latency: 2.63+-0.09445325043361012 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
--model_name gpt2-medium \
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

## Latency: 68.09+-0.18412488139694627 s, Forward latency: 4.39+-0.07150965616806541 s, Retrieval latency: 63.70+-0.18510296054182593 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--cache_update_width 20

python -u eval_rag_serve.py \
--model_name gpt2-medium \
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

## Latency: 7.38+-0.5681233513250148 s, Forward latency: 6.10+-0.5219046174503031 s, Retrieval latency: 1.29+-0.0497458847984694 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--cache_update_width 20

python -u eval_rag_serve.py \
--model_name gpt2-medium \
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

## Latency: 4.58+-0.01149558464361836 s, Forward latency: 2.41+-0.017621607268309632 s, Retrieval latency: 2.17+-0.006225560157538052 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--cache_update_width 20


### Dense + web_questions, SpecRet+S ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
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

## Latency: 62.43+-0.19962180326139223 s, Forward latency: 5.53+-0.021322838880480997 s, Retrieval latency: 56.90+-0.18011031191434287 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
--model_name gpt2-medium \
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

## Latency: 4.77+-0.3284760702631577 s, Forward latency: 3.83+-0.2762892819179712 s, Retrieval latency: 0.94+-0.058597757403525484 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
--model_name gpt2-medium \
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

# Latency: 5.03+-0.6834602074644497 s, Forward latency: 2.39+-0.23745681962606205 s, Retrieval latency: 2.64+-0.44608945697206737 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--model_name gpt2-medium \
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

## Latency: 69.92+-1.056193837759935 s, Forward latency: 4.33+-0.07169973755743517 s, Retrieval latency: 66.27+-1.0384617909008507 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--model_name gpt2-medium \
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

## Latency: 6.50+-0.5466259984186265 s, Forward latency: 5.63+-0.427686538348495 s, Retrieval latency: 1.24+-0.17301663735230174 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--model_name gpt2-medium \
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

## Latency: 5.34+-0.8908068495290679 s, Forward latency: 2.72+-0.3003277750705263 s, Retrieval latency: 3.04+-0.643340786354065 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
--model_name gpt2-medium \
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

## Latency: 59.24+-0.4699026902603864 s, Forward latency: 5.47+-0.10557576705126938 s, Retrieval latency: 54.22+-0.3719047680803627 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--cache_update_width 20 \
#--adapt_spec_step \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
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

## Latency: 4.34+-0.35211788392407795 s, Forward latency: 4.02+-0.332428198194377 s, Retrieval latency: 0.95+-0.07280886919638388 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--cache_update_width 20 \
#--adapt_spec_step \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
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

## Latency: 4.57+-0.814058031555564 s, Forward latency: 2.45+-0.3285576089158775 s, Retrieval latency: 3.08+-0.5958407144728166 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--cache_update_width 20 \
#--adapt_spec_step \
#--async_retrieval