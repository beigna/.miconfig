#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

export PATH="~/.miconfig/scripts:${PATH}"

# Tiene que ir al final de todo!
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
