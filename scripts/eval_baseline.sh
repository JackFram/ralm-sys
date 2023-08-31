###

nohup python -u eval_rag_serve.py \
--model_name facebook/opt-1.3b \
--dataset_path nq_open \
--dataset_split validation \
--output_dir ./results \
--gpu_id 0 \
--trial_num 5 \
--stride 4 \
--spec_step 1 \
--retrieval_type sparse \
--max_length 128 \
--retriever \
# > exp_results/baseline.out &
