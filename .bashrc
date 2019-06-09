#
# ~/.bashrc
#

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

PANEL_FIFO=/tmp/panel-fifo
PANEL_HEIGHT=24
PANEL_FONT="-*-fixed-*-*-*-*-10-*-*-*-*-*-*-*"
PANEL_WM_NAME=bspwm_panel
export PANEL_FIFO PANEL_HEIGHT PANEL_FONT PANEL_WM_NAME

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/home/nachopro/.miconfig/scripts:${PATH}"

export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source /usr/bin/virtualenvwrapper.sh

# Tiene que ir al final de todo!
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
