#!/usr/bin/env bash

#nohup bash scripts/run_opt_wiki_qa.sh > exp_results/opt_wiki_qa.out &
#
#nohup bash scripts/run_opt_trivia_qa.sh > exp_results/opt_trivia_qa.out &

#nohup bash scripts/run_opt_web_question.sh > exp_results/opt_web_question.out &
#
#nohup bash scripts/run_opt_nq_open.sh > exp_results/opt_nq_open.out &

#nohup bash scripts/run_opt_wiki_qa_refine.sh > exp_results/opt_wiki_qa_refine.out &
#
#nohup bash scripts/run_opt_trivia_qa_refine.sh > exp_results/opt_trivia_qa_refine.out &

nohup bash scripts/run_opt_web_question_refine.sh > exp_results/opt_web_question_refine.out &

nohup bash scripts/run_opt_nq_open_refine.sh > exp_results/opt_nq_open_refine.out &