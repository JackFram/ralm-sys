nohup python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--stride 4 \
--spec_step 4 \
--adapt_spec_step \
--retrieval_type dense \
--max_length 512 \
--retriever \
--cache \
--cache_update_width 1 \
--retrieval_always_wide \
# > exp_results/caching.out &
