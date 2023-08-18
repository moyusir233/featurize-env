#!/usr/bin/bash

if (( $# != 1 )); then
    echo "missing dataset id!"
    exit 1
fi

# 下载与导入开发环境的镜像
featurize dataset download $1 && sleep 10s && docker load -i $HOME/data/my-dev-env.tar &

# 初始化容器运行环境
# 安装nvidia的容器运行时
{
$HOME/work/scripts/install_nvidia_cri.sh &
}

wait
