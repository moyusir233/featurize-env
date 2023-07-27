#!/usr/bin/bash

# 执行初始化环境的脚本
$HOME/work/scripts/init_env.sh &
$HOME/work/scripts/init_container_env.sh 0f81ad28-f85e-48e5-bc31-47072822eefd &
wait
