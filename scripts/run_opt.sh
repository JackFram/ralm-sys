#!/usr/bin/env bash


### Dense + wikitext, B ########################
python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 1 \
--retrieval_type dense \
--max_length 512 \
--retriever

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 1 \
--retrieval_type dense \
--max_length 512 \
--retriever

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 1 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 1 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 1 \
--retrieval_type sparse \
--max_length 512 \
--retriever

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 1 \
--retrieval_type sparse \
--max_length 512 \
--retriever


### Dense + wikitext, SpecRet ########################
python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache

### Dense + wikitext, SpecRet+P ########################
python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256


### Dense + wikitext, SpecRet+S ########################
python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--adapt_spec_step

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--adapt_spec_step

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--adapt_spec_step

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--adapt_spec_step

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--adapt_spec_step

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--adapt_spec_step


### Dense + wikitext, SpecRet+A ########################
python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--async_retrieval

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--async_retrieval

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--async_retrieval

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--async_retrieval

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--async_retrieval

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--async_retrieval

### Dense + wikitext, SpecRet+PSA ########################
python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval

python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 8 \
--spec_step 4 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 256 \
--adapt_spec_step \
--async_retrieval