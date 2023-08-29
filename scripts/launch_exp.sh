#!/usr/bin/env bash

nohup bash scripts/run_gpt2.sh > exp_results/gpt2.out &

nohup bash scripts/run_opt.sh > exp_results/opt.out &