#!/usr/bin/env bash

#nohup bash scripts/run_llama_wiki_qa.sh > exp_results/llama_wiki_qa.out &
#
#nohup bash scripts/run_llama_trivia_qa.sh > exp_results/llama_trivia_qa.out &

#nohup bash scripts/run_llama_web_question.sh > exp_results/llama_web_question.out &
#
#nohup bash scripts/run_llama_nq_open.sh > exp_results/llama_nq_open.out &

nohup bash scripts/run_llama_wiki_qa_refine.sh > exp_results/llama_wiki_qa_refine.out &

nohup bash scripts/run_llama_trivia_qa_refine.sh > exp_results/llama_trivia_qa_refine.out &

#nohup bash scripts/run_llama_web_question_refine.sh > exp_results/llama_web_question_refine.out &
#
#nohup bash scripts/run_llama_nq_open_refine.sh > exp_results/llama_nq_open_refine.out &