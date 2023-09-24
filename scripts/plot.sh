#!/usr/bin/env bash

#python plot/plot_bar.py --model_name gpt2-medium --retrieval_type dense --add_legend
#python plot/plot_bar.py --model_name gpt2-medium --retrieval_type dense_hnsw --add_legend
#python plot/plot_bar.py --model_name gpt2-medium --retrieval_type sparse --add_legend
#
#python plot/plot_bar.py --model_name facebook/opt-1.3b --retrieval_type dense --add_legend
#python plot/plot_bar.py --model_name facebook/opt-1.3b --retrieval_type dense_hnsw --add_legend
#python plot/plot_bar.py --model_name facebook/opt-1.3b --retrieval_type sparse --add_legend
#
#python plot/plot_bar.py --model_name meta-llama/Llama-2-7b-hf --retrieval_type dense --add_legend
#python plot/plot_bar.py --model_name meta-llama/Llama-2-7b-hf --retrieval_type dense_hnsw --add_legend
#python plot/plot_bar.py --model_name meta-llama/Llama-2-7b-hf --retrieval_type sparse --add_legend

python plot/plot_bar.py --model_name gpt2-medium --retrieval_type dense
python plot/plot_bar.py --model_name gpt2-medium --retrieval_type dense_hnsw
python plot/plot_bar.py --model_name gpt2-medium --retrieval_type sparse

python plot/plot_bar.py --model_name facebook/opt-1.3b --retrieval_type dense
python plot/plot_bar.py --model_name facebook/opt-1.3b --retrieval_type dense_hnsw
python plot/plot_bar.py --model_name facebook/opt-1.3b --retrieval_type sparse

python plot/plot_bar.py --model_name meta-llama/Llama-2-7b-hf --retrieval_type dense
python plot/plot_bar.py --model_name meta-llama/Llama-2-7b-hf --retrieval_type dense_hnsw
python plot/plot_bar.py --model_name meta-llama/Llama-2-7b-hf --retrieval_type sparse