export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="clean"

plugins=(git)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

export EDITOR='vim'
export VISUAL='vim'

export GOPATH=~/Projects/gopath/
export TF_AUTO_SAVE_CREDENTIALS=0

export TF_AUTO_SAVE_CREDENTIALS=0
export JAVA_HOME=/opt/jdk1.8.0_45/

export PATH="$PATH:/home/guy/Projects/omnisharp-server/OmniSharp/bin/Debug:$HOME/Applications/:$HOME/Projects/go/bin:$HOME/Projects/gopath/bin:/opt/Blender/:/opt/IntelliJ/bin:/opt/PyCharm/bin:/opt/Eclipse/:/opt/TFS/:/opt/jdk1.8.0_45/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH="$PATH:$HOME/Applications/:$HOME/.rvm/bin:/opt/0xDBE-139.795.5/bin:/opt/idea-IC-139.659.2/bin:/opt/pycharm-community-4.0.4/bin:/opt/scala-2.11.4/bin/:/home/guy/Projects/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# OPAM configuration
. /home/guy/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval `opam config env`
