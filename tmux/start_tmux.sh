#!/bin/bash
#cd /home/slam/tmp/mydev_env/tmux && sh start_tmux.sh  zhp

tmux attach -t $1
if [ $? -ne 0 ];then
	tmux -2 -f .tmux.conf new-session -s $1
fi
