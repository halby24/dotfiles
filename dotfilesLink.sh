#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)
ln -sf $SCRIPT_DIR/.vimrc ~/.vimrc
ln -sf $SCRIPT_DIR/.vim ~/.vim
ln -sf $SCRIPT_DIR/.bash_profile ~/.bash_profile
ln -sf $SCRIPT_DIR/.bashrc ~/.bashrc
ln -sf $SCRIPT_DIR/.dein.toml ~/.dein.toml
ln -sf $SCRIPT_DIR/.dein_lazy.toml ~/.dein_lazy.toml
