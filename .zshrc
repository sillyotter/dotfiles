export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="clean"

plugins=(git)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

export EDITOR='vim'
export VISUAL='vim'

export GOPATH=~/Projects/gopath/

. /home/guy/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PATH="$PATH:$HOME/Applications/:$HOME/.rvm/bin:/opt/0xDBE-138.2222.2/bin:/opt/idea-IC-139.659.2/bin:/opt/pycharm-community-4.0.3/bin:/opt/scala-2.11.4/bin/:/home/guy/Projects/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
source ~/.rvm/scripts/rvm
