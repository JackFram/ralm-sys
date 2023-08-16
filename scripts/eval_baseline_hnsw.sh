nohup python -u eval_rag_serve.py \
--model_name gpt2 \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 1 \
--retrieval_type dense_hnsw \
--max_length 512 \
--retriever \
> ~/ralm-sys/approx_retrieval/baseline.out &
