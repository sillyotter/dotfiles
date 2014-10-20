export PATH="/home/guy/proj/go/bin:/home/guy/proj/gopath/bin:/home/guy/.opam/system/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

fpath=(~/.zsh $fpath)

if [[ -z $TMUX && -n $SSH_TTY ]]; then
    me=$(whoami)

    if tmux has-session -t $me 2>/dev/null; then
        exec tmux attach-session -t $me
    else 
        exec tmux new-session -s $me
    fi
fi

export GOPATH=~/proj/gopath/
export ZSH=$HOME/.oh-my-zsh
export EDITOR=vim
export VISUAL=vim

ZSH_THEME="clean"

plugins=(git mercurial)

source $ZSH/oh-my-zsh.sh
eval "$(hub alias -s)"

RPROMPT=''
. /home/guy/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
