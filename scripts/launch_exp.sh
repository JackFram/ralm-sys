#!/usr/bin/env bash

CUDA_VISIBLE_DEVICE=0 nohup bash scripts/run_gpt2.sh > exp_results/gpt2.out &

CUDA_VISIBLE_DEVICE=1 nohup bash scripts/run_opt.sh > exp_results/opt.out &