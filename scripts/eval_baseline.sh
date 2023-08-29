###

nohup python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wikitext \
--dataset_name wikitext-103-v1 \
--dataset_split validation \
--output_dir ./results \
--trial_num 5 \
--stride 4 \
--spec_step 1 \
--retrieval_type sparse \
--max_length 512 \
--retriever \
> exp_results/baseline.out &
