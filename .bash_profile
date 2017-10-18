#!/usr/bin/env bash
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:/usr/local/mysql/bin:$HOME/Library/Python/3.6/bin
export PATH

EDITOR=vim
export EDITOR

export NODE_PATH=/usr/local/lib/node_modules

# Pythonのエイリアス
# alias python='python3.6'
# alias pip='pip3.6'

# AWS
# . ~/.aws/env_credential

# Docker
alias dl='docker ps -l -q'
