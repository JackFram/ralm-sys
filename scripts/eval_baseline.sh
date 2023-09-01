###

nohup python -u eval_rag_serve.py \
--model_name gpt2-medium \
--dataset_path wiki_qa \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 3 \
--stride 4 \
--spec_step 3 \
--retrieval_type dense \
--max_length 128 \
--retriever \
--cache \
> exp_results/baseline.out &
