WORKON_HOME=~/.virtualenvs/
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="af-magic"
DISABLE_LS_COLORS="true"
COMPLETION_WAITING_DOTS="true"

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

plugins=(git virtualenvwrapper autojump battery)

export LC_CTYPE=en_US.UTF-8
export EDITOR="vim"
setopt AUTO_CD


export ZSH_DISABLE_COMPFIX="true"
source $ZSH/oh-my-zsh.sh

export PATH=$HOME/.local/bin:$HOME/Bin:$PATH

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

alias x='exit'
alias tkill='tmux kill-session -t '
alias tlist='tmux ls'

alias ssh='TERM=xterm ssh'

alias t='task'


fpath=($fpath /usr/local/share/doc/task/scripts/zsh)
autoload -Uz compinit
compinit -i

zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*' group-name ''
autoload colors && colors

KEYTIMEOUT=1

alias tasks='git grep -EIn "todo|fixme"'

export DEVELOPER_DIR="/Library/Developer/CommandLineTools"

alias pp='python -m json.tool'

alias pip_upgrade_all="(echo pip; pip freeze --local | awk 'BEGIN{FS=\"==\"}{print $1}') | xargs pip install -U"
