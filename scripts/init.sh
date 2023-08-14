#!/usr/bin/bash

# 执行初始化环境的脚本
$HOME/work/scripts/init_env.sh &
$HOME/work/scripts/init_container_env.sh b7de7aa9-f9fb-4ca2-92e5-314aa722559a &
wait

# 拉取git仓库与配置git
git config --global user.name moyu
git config --global user.email 279972161@qq.com
cd $HOME && git clone -b develop git@github.com:moyusir233/tch-rs.git 
cd $HOME && git clone -b torchv2.0.1_dev --depth 1 git@github.com:moyusir233/pytorch.git 