#!/usr/bin/bash

# 执行初始化环境的脚本
$HOME/work/scripts/init_env.sh &
$HOME/work/scripts/init_container_env.sh &
wait
