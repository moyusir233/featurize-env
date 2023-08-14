#!/usr/bin/bash

env_dir="$HOME/work/env"

# 安装常用的软件包
sudo apt install -y ${env_dir}/zoxide_0.9.1_amd64.deb
# conda install -y -c conda-forge starship

# 拷贝tmux的配置文件
rm -rf $HOME/.tmux
rm -f $HOME/.tmux.conf
cp -r ${env_dir}/.tmux $HOME/
cp ${env_dir}/.tmux.conf $HOME/

# 拷贝zsh的配置文件
rm -rf $HOME/.oh-my-zsh
rm -f $HOME/.zshrc
cp -r ${env_dir}/.oh-my-zsh $HOME/
cp ${env_dir}/.zshrc $HOME/

# 拷贝starship的配置文件
cp ${env_dir}/starship.toml $HOME/.config/

source $HOME/.zshrc