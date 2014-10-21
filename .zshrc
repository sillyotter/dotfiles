SSH_ENV="$HOME/.ssh/environment"

function start_agent {
     echo "Initialising new SSH agent..."
     /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
     echo succeeded
     chmod 600 "${SSH_ENV}"
     . "${SSH_ENV}" > /dev/null
     /usr/bin/ssh-add
     /usr/bin/ssh-add ~/.ssh/github-ubs.prv
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     #ps ${SSH_AGENT_PID} doesn't work under cywgin
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
         start_agent;
     }
else
     start_agent;
fi

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

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
