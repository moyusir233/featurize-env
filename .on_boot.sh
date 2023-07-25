sudo -i -u featurize bash << EOF

# 执行初始化环境的脚本
$HOME/scripts/init_env.sh &
$HOME/scripts/init_container_env.sh 53443536-6c1b-46bb-8583-919066bc8111 &
wait
source $HOME/.zshrc

EOF
