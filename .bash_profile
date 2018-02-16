#!/usr/bin/env bash
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=/usr/local/var/nodebrew/current/bin:$HOME/.local/bin:$HOME/bin:$PATH
export PATH

EDITOR=vim
export EDITOR

export NODEBREW_ROOT=/usr/local/var/nodebrew
export NODE_PATH=/usr/local/lib/node_modules

alias svim='sudo vim -u ~/.vimrc'
alias ubuntu='docker exec -it ubuntu bash'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
