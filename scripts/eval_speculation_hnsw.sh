nohup python -u eval_rag_serve.py \
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
# > ~/ralm-sys/approx_retrieval/speculation.out &
