#!/usr/bin/env bash


### Dense + wikitext, B ########################
python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
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
--retriever

## Latency: 147.76+-2.8003093508659456 s, Forward latency: 7.16+-0.019016542380743236 s, Retrieval latency: 140.60+-2.8106175335422092 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever

python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
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
--retriever

## Latency: 8.68+-0.1047241484692095 s, Forward latency: 7.63+-0.090898668251698 s, Retrieval latency: 1.06+-0.0170062308170559 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever

python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
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
--retriever

## Latency: 11.06+-0.2514447324317352 s, Forward latency: 6.04+-0.034551543552591824 s, Retrieval latency: 5.02+-0.25442629953798757 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
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
--cache

## Latency: 90.44+-2.016504918634833 s, Forward latency: 12.43+-1.2904246306007936 s, Retrieval latency: 78.01+-6.7652113301995715 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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

python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
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
--cache

## Latency: 14.23+-0.3573774920090918 s, Forward latency: 12.79+-0.3186719951671124 s, Retrieval latency: 1.44+-0.03888446429835448 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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

python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
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
--cache

# Latency: 10.79+-0.20903272074361817 s, Forward latency: 8.04+-0.09176543879267866 s, Retrieval latency: 2.75+-0.18343547653407422 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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
--cache_update_width 256

## Latency: 85.65+-1.4679475148397012 s, Forward latency: 15.21+-0.3037526657836349 s, Retrieval latency: 70.44+-1.3157098931174318 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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
--cache_update_width 256

## Latency: 21.04+-0.43113111554197503 s, Forward latency: 18.08+-0.36865468679084573 s, Retrieval latency: 2.96+-0.06251074458636281 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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
--cache_update_width 256

## Latency: 12.60+-0.3632230404116292 s, Forward latency: 9.59+-0.27813057503087063 s, Retrieval latency: 3.01+-0.09405831511787942 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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
--adapt_spec_step

## Latency: 81.40+-3.8296845146142244 s, Forward latency: 12.58+-0.9335077791941658 s, Retrieval latency: 68.82+-2.898562876533452 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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
--adapt_spec_step

## Latency: 9.36+-0.07490257019892703 s, Forward latency: 8.22+-0.06266938169290918 s, Retrieval latency: 1.15+-0.014287151024657215 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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
--adapt_spec_step

# Latency: 10.56+-0.10819918177662895 s, Forward latency: 6.78+-0.03618373542091434 s, Retrieval latency: 3.77+-0.09111099375467997 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
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
--async_retrieval

## Latency: 77.39+-1.119537268904064 s, Forward latency: 10.55+-0.1580613772229268 s, Retrieval latency: 67.76+-0.9702462489799301 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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

python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
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
--async_retrieval

## Latency: 18.35+-1.1178822732456304 s, Forward latency: 16.50+-0.9436333423308263 s, Retrieval latency: 2.19+-0.22169315131832015 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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

python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
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
--async_retrieval

## Latency: 10.16+-0.18775015848531493 s, Forward latency: 8.06+-0.09979344890848892 s, Retrieval latency: 2.89+-0.14763331725046944 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 73.64+-0.8001201831076963 s, Forward latency: 15.04+-0.09668571099207439 s, Retrieval latency: 60.14+-0.6480014378713791 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## 12.94+-0.03750147942253118 s, Forward latency: 11.07+-0.060694441973933824 s, Retrieval latency: 3.71+-0.024503560718402758 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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
--model_name meta-llama/Llama-2-7b-hf \
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
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

## Latency: 9.36+-0.16416645024414367 s, Forward latency: 7.52+-0.058157379911027506 s, Retrieval latency: 4.50+-0.16388856832914686 s

#python -u eval_rag_serve.py \
#--model_name meta-llama/Llama-2-7b-hf \
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