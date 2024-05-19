# RaLMSpec - A Speculation and Caching Framework for Iterative Retrieval-augmented Language Models

Retrieval-augmented language models (RaLM) have emerged as a powerful approach for addressing knowledge-intensive natural language processing (NLP) tasks. RaLM combines a non-parametric knowledge base with a parametric language model to deliver impressive results. 

To overcome the overhead challenges associated with iterative RaLM, we introduce RaLMSpec, a novel framework inspired by speculation and caching techniques. RaLMSpec offers a generic speed-up solution for iterative RaLM while maintaining consistent model outputs. This is achieved through two key mechanisms: **speculative retrieval** and **batched verification**.

By incorporating additional features such as prefetching (P), optimal speculation stride scheduler (S), and asynchronous verification (A), RaLMSpec maximizes its potential for accelerating RaLM workflows.

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

### Evaluate RaLMSpec with Prefetch (P):
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

### Evaluate RaLMSpec with Optimal Speculation Stride (S):
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

### Evaluate RaLMSpec with  Asynchronous Verification (A):
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

### Evaluate RaLMSpec with Prefetch (P), Asynchronous Verification (A), and Optimal Speculation Stride (S):
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

## Evaluation

For document-level retrieval, extensive evaluations were conducted using three language models on four downstream QA datasets. RaLMSpec can achieve a speed-up ratio of 1.75-2.39×, 1.04-1.39×, and 1.31-1.77× when the retriever is an exact dense retriever (EDR), approximate dense retriever (ADR), and sparse retriever (SR) respectively compared with the baseline.
<p align="center">
  <img src="https://github.com/JackFram/ralm-sys/assets/99985904/2dafc8a1-5949-4033-8a2d-f4246b98a325" width="450" />
</p>

For token-level iterative RaLM (KNN-LM) serving, RaLMSpec can achieve a speed-up ratio up to 7.59× and 2.45× compared to kNN-LMs over wiki-QA when the retriever is an exact dense and approximate dense retriever, respectively.
<p align="center">
  <img src="https://github.com/JackFram/ralm-sys/assets/99985904/8dbe742e-3ab0-4313-b10a-08100cf662ab" width="300" />
  <img src="https://github.com/JackFram/ralm-sys/assets/99985904/74b8c8a6-3e20-46c2-b4f2-618d542e7f1d" width="300" />
</p>

In summary, RaLMSpec offers an effective solution to enhance the efficiency of iterative RaLM approaches, making them even more powerful and practical for knowledge-intensive NLP tasks.

## Citation
Please cite RaLMSpec as:

``` bibtex
@misc{zhang2024accelerating,
      title={Accelerating Retrieval-Augmented Language Model Serving with Speculation}, 
      author={Zhihao Zhang and Alan Zhu and Lijie Yang and Yihua Xu and Lanting Li and Phitchaya Mangpo Phothilimthana and Zhihao Jia},
      year={2024},
      eprint={2401.14021},
      archivePrefix={arXiv},
      primaryClass={cs.LG}
}
