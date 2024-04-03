#!/bin/bash

# 定义一个数组，包含你想要测试的GRID_SIZE值
grid_sizes=(0 2 3 4 6 8 12)


# 循环遍历grid_sizes数组中的每个值
for grid_size in "${grid_sizes[@]}"; do    
    echo "Running with GRID_SIZE=$grid_size"
    # 执行你的命令
    GRID_SIZE=$grid_size bash scripts/v1_5/eval/textvqa_imglast.sh
done
