#
# ~/.bashrc
#

alias ls='ls --color=auto'
alias grep='grep --color'
PS1='[\u@\h \W]\$ '

export EDITOR=vim
export HISTCONTROL=ignoreboth:erasedups

PANEL_FIFO=/tmp/panel-fifo
PANEL_HEIGHT=24
PANEL_FONT="-*-fixed-*-*-*-*-10-*-*-*-*-*-*-*"
PANEL_WM_NAME=bspwm_panel
export PANEL_FIFO PANEL_HEIGHT PANEL_FONT PANEL_WM_NAME

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

export PATH="/home/nachopro/.miconfig/scripts:${PATH}"

export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source /usr/bin/virtualenvwrapper.sh

alias t='todo.sh'
t ls
