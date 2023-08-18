CUDA_VISIBLE_DEVICES=0 nohup python -u eval_rag_serve.py \
--model_name gpt2 \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 1 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
> cache-dense-1.out &

CUDA_VISIBLE_DEVICES=1 nohup python -u eval_rag_serve.py \
--model_name gpt2 \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 2 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
> cache-dense-2.out &

CUDA_VISIBLE_DEVICES=0 nohup python -u eval_rag_serve.py \
--model_name gpt2 \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
> cache-dense-3.out &

CUDA_VISIBLE_DEVICES=1 nohup python -u eval_rag_serve.py \
--model_name gpt2 \
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
> ~/ralm-sys/exact_retrieval/cache-dense-4.out &
