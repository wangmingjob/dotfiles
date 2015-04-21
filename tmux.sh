#!/bin/zsh
# Tanky Woo <me@tankywoo.com>

# 
SESSION_NAME='dev'
WINDOWS_NAME1='golang'
WINDOWS_NAME2='ops-dev'

source ~/.zshrc
tmux='tmux -2'

tmux start-server

if ! $(tmux has-session -t ${SESSION_NAME}); then
	tmux new-session -d -s ${SESSION_NAME} -n ${WINDOWS_NAME1} # -d is important

	tmux select-window -t ${WINDOWS_NAME1}
    tmux split-window -h -p 30
	tmux select-pane -t 1
	tmux split-window -v -p 50

	tmux new-window -n ${WINDOWS_NAME2}

	tmux select-window -t ${WINDOWS_NAME1}
    tmux send-keys -t 0 'cd ~/go/src/bitbucket.org/bianmei/bianmei-web && vim ' C-m
    tmux send-keys -t 1 'cd ~/go/src && revel run bitbucket.org/bianmei/bianmei-web' C-m
	tmux select-pane -t 0
fi

tmux attach-session -d -t ${SESSION_NAME}
