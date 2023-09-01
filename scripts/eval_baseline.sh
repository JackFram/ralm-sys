###

nohup python -u eval_rag_serve.py \
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
> exp_results/baseline.out &
