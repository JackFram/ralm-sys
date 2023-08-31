#!/usr/bin/env bash

nohup bash scripts/run_gpt2_wiki_qa.sh > exp_results/gpt2_wiki_qa.out &

nohup bash scripts/run_gpt2_trivia_qa.sh > exp_results/gpt2_trivia_qa.out &