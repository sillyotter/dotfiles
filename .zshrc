export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="clean"

plugins=(git)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

export EDITOR='vim'
export VISUAL='vim'

export GOPATH=~/Projects/gopath/

. /home/guy/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PATH="$PATH:$HOME/Applications/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
