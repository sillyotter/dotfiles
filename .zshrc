export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="clean"

plugins=(git archlinux docker git-extras lein mercurial npm redis-cli systemd taskwarrior)

function regex {
    gawk 'match($0,/'$1'/, ary) { print ary['${2:-'0'}']}';
}

alias cmacs="emacsclient -t -n"
alias emacs="emacsclient -c -n"
alias e=emacs
alias eg=emacs
alias ec=cmacs
alias code=visual-studio-code

source $ZSH/oh-my-zsh.sh
RPROMPT='[%D{%L:%M%P}]'

eval $(keychain --eval --quiet id_rsa github.priv router.priv )


