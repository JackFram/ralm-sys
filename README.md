# RaLMSpec - A Speculation and Caching Framework for Retrieval-augmented Language Models

Retrieval-augmented language models (RaLM) have emerged as a powerful approach for addressing knowledge-intensive natural language processing (NLP) tasks. RaLM combines a non-parametric knowledge base with a parametric language model to deliver impressive results. 

To overcome the overhead challenges associated with iterative RaLM, we introduce RaLMSpec, a novel framework inspired by speculation and caching techniques. RaLMSpec offers a generic speed-up solution for iterative RaLM while maintaining consistent model outputs. This is achieved through two key mechanisms: **speculative retrieval** and **batched verification**.

By incorporating additional features such as prefetching, an optimal speculation stride scheduler, and asynchronous verification, RaLMSpec maximizes its potential for accelerating RaLM workflows.

## How to Run RaLMSpec
### Evaluate RaLMSpec:
To run RaLMSpec without any special features enabled, use the following command:
```bash
python -u eval_rag_serve.py \
--model_name $MODEL_NAME \
--dataset_path $DATASET \
--dataset_split validation \
--output_dir $OUTPUT_PATH \
--gpu_id $HOST_GPU_ID \
--trial_num $NUMBER_TRAIL \
--stride 4 \
--spec_step 3 \
--retrieval_type $RETRIEVAL_TYPE \
--max_length 128 \
--retriever \
--cache
```

### Evaluate RaLMSpec with Prefetch:
To run RaLMSpec with Pretech enabled, use the following command:
```bash
python -u eval_rag_serve.py \
--model_name $MODEL_NAME \
--dataset_path $DATASET \
--dataset_split validation \
--output_dir $OUTPUT_PATH \
--gpu_id $HOST_GPU_ID \
--trial_num $NUMBER_TRAIL \
--stride 4 \
--spec_step 3 \
--retrieval_type $RETRIEVAL_TYPE \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 20
```

### Evaluate RaLMSpec with Optimal Speculation Stride:
To run RaLMSpec with  Optimal Speculation Stride enabled, use the following command:
```bash
python -u eval_rag_serve.py \
--model_name $MODEL_NAME \
--dataset_path $DATASET \
--dataset_split validation \
--output_dir $OUTPUT_PATH \
--gpu_id $HOST_GPU_ID \
--trial_num $NUMBER_TRAIL \
--stride 4 \
--spec_step 1 \
--retrieval_type $RETRIEVAL_TYPE \
--max_length 128 \
--retriever \
--cache \
--adapt_spec_step
```

### Evaluate RaLMSpec with  Asynchronous Verification:
To run RaLMSpec with  Asynchronous Verification enabled, use the following command:
```bash
python -u eval_rag_serve.py \
--model_name $MODEL_NAME \
--dataset_path $DATASET \
--dataset_split validation \
--output_dir $OUTPUT_PATH \
--gpu_id $HOST_GPU_ID \
--trial_num $NUMBER_TRAIL \
--stride 4 \
--spec_step 3 \
--retrieval_type $RETRIEVAL_TYPE \
--max_length 128 \
--retriever \
--cache \
--async_retrieval
```

### Evaluate RaLMSpec with Prefetch, Asynchronous Verification, and Optimal Speculation Stride:
To run RaLMSpec with all functionalities, use the following command:
```bash
python -u eval_rag_serve.py \
--model_name $MODEL_NAME \
--dataset_path $DATASET \
--dataset_split validation \
--output_dir $OUTPUT_PATH \
--gpu_id $HOST_GPU_ID \
--trial_num $NUMBER_TRAIL \
--stride 4 \
--spec_step 1 \
--retrieval_type $RETRIEVAL_TYPE \
--max_length 128 \
--retriever \
--cache \
--cache_update_width 20 \
--adapt_spec_step \
--async_retrieval
```

## Evaluation and Conclusion

Extensive evaluations were conducted using three different language models on four downstream question-answering (QA) datasets. The results demonstrate the remarkable speed-up capabilities of RaLMSpec:

- When using an exact dense retriever, RaLMSpec achieves a speed-up ratio of $1.75$-$2.39\times$ compared to the baseline.
- When utilizing an approximate dense retriever, RaLMSpec delivers a speed-up ratio of $1.04$-$1.39\times$ compared to the baseline.
- With a sparse retriever, RaLMSpec achieves a speed-up ratio of $1.31$-$1.77\times$ compared to the baseline.

In summary, RaLMSpec offers an effective solution to enhance the efficiency of iterative RaLM approaches, making them even more powerful and practical for knowledge-intensive NLP tasks.
