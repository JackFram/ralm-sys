#!/usr/bin/env bash

nohup bash scripts/run_llama_wiki_qa.sh > exp_results/llama_wiki_qa.out &

nohup bash scripts/run_llama_trivia_qa.sh > exp_results/llama_trivia_qa.out &