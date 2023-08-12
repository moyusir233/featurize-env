#!/usr/bin/bash

# 执行初始化环境的脚本
$HOME/work/scripts/init_env.sh &
$HOME/work/scripts/init_container_env.sh 399a507b-6ecf-4b29-b3d6-88a91cb05736 &
wait

# 拉取git仓库与配置git
git config --global user.name moyu
git config --global user.email 279972161@qq.com
cd $HOME && git clone -b develop git@github.com:moyusir233/tch-rs.git 
cd $HOME && git clone -b torchv2.0.1_dev --depth 1 git@github.com:moyusir233/pytorch.git 