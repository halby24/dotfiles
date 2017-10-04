# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Reflective touch
dirtouch() {
    mkdir -p "$(dirname $1)"
    touch "$1"
}
alias touch=dirtouch

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export XDG_CONFIG_HOME=$HOME/.config
export NODE_PATH=/usr/local/lib/node_modules
