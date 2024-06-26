#!/usr/bin/env bash


### Dense + web_questions, B ########################
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
--retriever

## Latency: 141.38+-1.5066394872035116 s, Forward latency: 3.19+-0.004727942677447234 s, Retrieval latency: 138.19+-1.5049434623405007 s

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
--retriever

## Latency: 4.50+-0.41055136857581626 s, Forward latency: 3.62+-0.32774227244356663 s, Retrieval latency: 0.88+-0.08696689303989008 s

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
--retriever

## Latency: 7.03+-1.154611791330397 s, Forward latency: 2.11+-0.21427946602674933 s, Retrieval latency: 4.91+-0.9403468156197738 s

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
--cache

## Latency: 69.88+-0.524424213505028 s, Forward latency: 4.39+-0.01147581617146666 s, Retrieval latency: 65.49+-0.5130734490681549 s

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
--cache

## Latency: 6.44+-0.44058023792536916 s, Forward latency: 5.32+-0.3492762222500654 s, Retrieval latency: 1.11+-0.09365335346210954 s

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
--cache

## Latency: 5.30+-0.9548729532710574 s, Forward latency: 2.67+-0.4035941256609728 s, Retrieval latency: 2.63+-0.5598446134732815 s

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
--cache_update_width 256

## Latency: 65.22+-0.7999048996250347 s, Forward latency: 4.11+-0.08401188092862445 s, Retrieval latency: 61.11+-0.7171867018201786 s

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
#--cache_update_width 256

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
--cache_update_width 256

## Latency: 5.97+-0.4686247189426058 s, Forward latency: 4.93+-0.3664791790070576 s, Retrieval latency: 1.04+-0.1021960687684187 s

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
#--cache_update_width 256

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
--cache_update_width 256

## Latency: 7.16+-1.3475575474589736 s, Forward latency: 4.42+-0.7154428274984118 s, Retrieval latency: 2.74+-0.6321283462840437 s

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
#--cache_update_width 256


### Dense + web_questions, SpecRet+S ########################
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
--adapt_spec_step

## Latency: 59.43+-1.0084340661392268 s, Forward latency: 5.62+-0.1102363025451929 s, Retrieval latency: 53.82+-0.904395214478259 s

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
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

## Latency: 5.10+-0.02917168260254886 s, Forward latency: 4.09+-0.006471637373849628 s, Retrieval latency: 1.01+-0.024624584178803775 s

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
--spec_step 3 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step

## Latency: 5.65+-0.9280434213345485 s, Forward latency: 2.69+-0.3639299939684509 s, Retrieval latency: 2.97+-0.5641607905576959 s

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
--async_retrieval

## Latency: 69.36+-0.6095261491371016 s, Forward latency: 4.34+-0.06441651979200744 s, Retrieval latency: 65.67+-0.5702995445934411 s

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
--async_retrieval

## Latency: 6.49+-0.3800465639094446 s, Forward latency: 5.71+-0.356587990622311 s, Retrieval latency: 1.15+-0.04988049482854489 s

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
--async_retrieval

## Latency: 4.99+-0.863221406777742 s, Forward latency: 2.72+-0.345384308467972 s, Retrieval latency: 2.80+-0.591235562327138 s

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
--spec_step 3 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 53.36+-1.0808824660443943 s, Forward latency: 5.18+-0.11571677743958084 s, Retrieval latency: 48.60+-0.9701172694959648 s

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
#--cache_update_width 256 \
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
--spec_step 3 \
--retrieval_type dense_hnsw \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 3.81+-0.02415293926048724 s, Forward latency: 3.49+-0.017006102550875705 s, Retrieval latency: 0.87+-0.026260708610321287 s

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
#--cache_update_width 256 \
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
--spec_step 3 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 6.50+-1.3902486770147273 s, Forward latency: 4.16+-0.7605507835895247 s, Retrieval latency: 4.08+-0.9019197133158195 s

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
#--cache_update_width 256 \
#--adapt_spec_step \
#--async_retrieval