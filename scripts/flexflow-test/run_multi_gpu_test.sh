#!/bin/bash
export PATH=/opt/conda/bin:$PATH
export CUDNN_DIR=/usr/local/cuda
export CUDA_DIR=/usr/local/cuda
export FF_HOME=/usr/FlexFlow
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/conda/lib

# C++ tests
./tests/cpp_gpu_tests.sh 1
# Python tests
./tests/multi_gpu_tests.sh 1
