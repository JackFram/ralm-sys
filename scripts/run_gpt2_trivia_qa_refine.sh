#!/usr/bin/env bash


### Dense + wikitext, B ########################
#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 3 \
#--stride 4 \
#--spec_step 1 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever

## Latency: 144.82+-0.8963924214542842 s, Forward latency: 3.40+-0.007844510562412439 s, Retrieval latency: 141.43+-0.8890987892221209 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type dense \
#--max_length 128 \
#--retriever

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 1 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever

## Latency: 3.78+-0.0969362047530604 s, Forward latency: 3.08+-0.08470734395049571 s, Retrieval latency: 0.70+-0.012236634044783203 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--stride 8 \
#--spec_step 1 \
#--retrieval_type dense_hnsw \
#--max_length 128 \
#--retriever

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path trivia_qa \
#--dataset_name rc \
#--dataset_split validation \
#--output_dir ./results \
#--gpu_id 1 \
#--trial_num 5 \
#--stride 4 \
#--spec_step 1 \
#--retrieval_type sparse \
#--max_length 128 \
#--retriever

## Latency: 6.80+-0.09034510615800556 s, Forward latency: 2.16+-0.033355837936619954 s, Retrieval latency: 4.64+-0.06155874042016144 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path trivia_qa \
#--dataset_name rc \
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

## Latency: 69.83+-0.2867901935831338 s, Forward latency: 4.46+-0.077832059453558 s, Retrieval latency: 65.37+-0.31874833898817023 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path trivia_qa \
#--dataset_name rc \
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

## Latency: 7.47+-0.16822105267978735 s, Forward latency: 6.16+-0.11070270891231704 s, Retrieval latency: 1.31+-0.06136350272147419 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path trivia_qa \
#--dataset_name rc \
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

# Latency: 5.40+-0.03485776728826002 s, Forward latency: 2.63+-0.028329418998782573 s, Retrieval latency: 2.78+-0.017110314775439124 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
--model_name gpt2-medium \
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
--cache_update_width 20

## Latency: 68.14+-0.06785989453387617 s, Forward latency: 4.26+-0.024599546632545696 s, Retrieval latency: 63.88+-0.04489289199151523 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--cache_update_width 20

python -u eval_rag_serve.py \
--model_name gpt2-medium \
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
--cache_update_width 20

## Latency: 7.28+-0.28592493277972386 s, Forward latency: 5.97+-0.22059317711897977 s, Retrieval latency: 1.30+-0.06573546590558493 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--cache_update_width 20

python -u eval_rag_serve.py \
--model_name gpt2-medium \
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
--cache_update_width 20

## Latency: 5.50+-0.0482975426173765 s, Forward latency: 2.71+-0.02089595550385276 s, Retrieval latency: 2.79+-0.03495206951147938 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--cache_update_width 20


### Dense + wikitext, SpecRet+S ########################
python -u eval_rag_serve.py \
--model_name gpt2-medium \
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
--retriever \
--cache \
--adapt_spec_step

## Latency: 64.63+-0.4456911466691701 s, Forward latency: 5.85+-0.021039416094472782 s, Retrieval latency: 58.78+-0.42475511016911777 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
--model_name gpt2-medium \
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
--retriever \
--cache \
--adapt_spec_step

## Latency: 4.51+-0.4514382837842547 s, Forward latency: 3.67+-0.36401828488665966 s, Retrieval latency: 0.84+-0.08779998304123655 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
--model_name gpt2-medium \
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
--retriever \
--cache \
--adapt_spec_step

# Latency: 5.61+-0.11499563133621894 s, Forward latency: 2.47+-0.045845258071232124 s, Retrieval latency: 3.14+-0.07010798814975742 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path trivia_qa \
#--dataset_name rc \
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

## Latency: 70.40+-0.7829149530986377 s, Forward latency: 4.53+-0.03386751513147094 s, Retrieval latency: 66.54+-0.7973239966386328 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path trivia_qa \
#--dataset_name rc \
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

## Latency: 6.94+-0.8481756369454304 s, Forward latency: 5.99+-0.6962629761120461 s, Retrieval latency: 1.26+-0.20154539303767763 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
#--dataset_path trivia_qa \
#--dataset_name rc \
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

## Latency: 5.04+-0.1258409291400635 s, Forward latency: 2.69+-0.050936613190481275 s, Retrieval latency: 2.83+-0.08466701088868059 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
--model_name gpt2-medium \
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
--retriever \
--cache \
--cache_update_width 20 \
--adapt_spec_step \
--async_retrieval

## Latency: 61.39+-0.9996456684929282 s, Forward latency: 5.73+-0.09061146986828815 s, Retrieval latency: 56.14+-0.9131740192482157 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--cache_update_width 20 \
#--adapt_spec_step \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
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
--retriever \
--cache \
--cache_update_width 20 \
--adapt_spec_step \
--async_retrieval

## Latency: 3.64+-0.5497411183063412 s, Forward latency: 3.32+-0.5083875929656487 s, Retrieval latency: 0.77+-0.10075939200193432 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--cache_update_width 20 \
#--adapt_spec_step \
#--async_retrieval

python -u eval_rag_serve.py \
--model_name gpt2-medium \
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
--retriever \
--cache \
--cache_update_width 20 \
--adapt_spec_step \
--async_retrieval

## Latency: 4.99+-0.01844443310915719 s, Forward latency: 2.50+-0.020378240204731547 s, Retrieval latency: 3.46+-0.009749360094876753 s

#python -u eval_rag_serve.py \
#--model_name gpt2-medium \
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
#--cache_update_width 20 \
#--adapt_spec_step \
#--async_retrieval