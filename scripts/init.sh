#!/usr/bin/bash

# 执行初始化环境的脚本
$HOME/work/scripts/init_env.sh &
$HOME/work/scripts/init_container_env.sh 399a507b-6ecf-4b29-b3d6-88a91cb05736 &
wait
