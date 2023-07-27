#!/bin/bash

# 启动开发容器,将本机GPU挂载进去,ipc=host是保证进程间通信时所使用的共享内存空间足够,详见pytorch仓库readme
docker run --gpus all -itd --ipc=host --name my-dev-env moyusir233/my-disributed-ml-develop:new
