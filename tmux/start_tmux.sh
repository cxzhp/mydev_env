#!/bin/bash

tmux attach -t $1
if [ $? -ne 0 ];then
	tmux -2 new-session -s $1
fi
