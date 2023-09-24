###

nohup python -u eval_rag_serve.py \
--model_name meta-llama/Llama-2-7b-hf \
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
--async_retrieval \
> exp_results/baseline.out &
