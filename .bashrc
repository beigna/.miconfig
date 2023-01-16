#
# ~/.bashrc
#

alias ls='ls --color=auto'
alias grep='grep --color'
PS1='[\u@\h \W]\$ '

export EDITOR=vim
export HISTCONTROL=ignoreboth:erasedups

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
# source /usr/bin/virtualenvwrapper.sh
