#!/bin/bash

python -m llava.eval.model_vqa_science \
    --model-path liuhaotian/llava-v1.5-7b \
    --question-file ./playground/data/eval/scienceqa/llava_test_CQM-A.json \
    --image-folder ./playground/data/eval/scienceqa/images/test \
    --answers-file ./playground/data/eval/scienceqa/answers/llava-v1.5-7b_sandwich.jsonl \
    --single-pred-prompt \
    --temperature 0 \
    --image-position middle \
    --conv-mode vicuna_v1

python llava/eval/eval_science_qa.py \
    --base-dir ./playground/data/eval/scienceqa \
    --result-file ./playground/data/eval/scienceqa/answers/llava-v1.5-7b_sandwich.jsonl \
    --output-file ./playground/data/eval/scienceqa/answers/llava-v1.5-7b_sandwich_output.jsonl \
    --output-result ./playground/data/eval/scienceqa/answers/llava-v1.5-7b_sandwich_result.json
