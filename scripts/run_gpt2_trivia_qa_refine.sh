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

## Latency: 66.64+-0.22815377206133886 s, Forward latency: 4.24+-0.022850053853693885 s, Retrieval latency: 62.40+-0.20768499296761925 s

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

## Latency: 6.96+-0.6399507037702747 s, Forward latency: 5.75+-0.5136326962448121 s, Retrieval latency: 1.21+-0.13249454932003935 s

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

## Latency: 6.91+-0.1392670084931985 s, Forward latency: 4.21+-0.08878659543703624 s, Retrieval latency: 2.70+-0.05142437975368174 s

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

## Latency: 62.61+-0.9235264876179446 s, Forward latency: 5.96+-0.07104863015836341 s, Retrieval latency: 56.65+-0.8524840317804455 s

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

## Latency: 4.47+-0.6369016171830293 s, Forward latency: 3.61+-0.4987242808228567 s, Retrieval latency: 0.86+-0.13874398484456257 s

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

# Latency: 5.24+-0.0831591084611101 s, Forward latency: 2.44+-0.034668483919216384 s, Retrieval latency: 2.80+-0.05082449324673874 s

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

## Latency: 56.95+-1.3454742629116028 s, Forward latency: 5.48+-0.09248030740521111 s, Retrieval latency: 51.92+-1.26278133233326 s

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

## Latency: 3.86+-0.3113815848329637 s, Forward latency: 3.50+-0.2716794923643243 s, Retrieval latency: 0.79+-0.08342243404304413 s

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

## Latency: 5.91+-0.03126278615224662 s, Forward latency: 3.75+-0.02868480058748641 s, Retrieval latency: 3.75+-0.018223892215796022 s

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