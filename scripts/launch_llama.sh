#!/usr/bin/env bash

nohup bash scripts/run_llama_wikitext.sh > exp_results/llama_wikitext.out &

nohup bash scripts/run_llama_trivia_qa.sh > exp_results/llama_trivia_qa.out &