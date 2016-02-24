export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="clean"

plugins=(git archlinux docker git-extras lein mercurial npm redis-cli systemd taskwarrior)

function regex {
    gawk 'match($0,/'$1'/, ary) { print ary['${2:-'0'}']}';
}

#alias cmacs="emacsclient -t -n"
#alias emacs="emacsclient -c -n"
#alias e=emacs
#alias eg=emacs
#alias ec=cmacs
alias fsi=fsharpi --colorconsole+ --readline+ --tailcalls+

alias wds="wol d4:be:d9:a6:10:3f"
alias code=visual-studio-code
#alias rdock="docker --tls=false -H tcp://devsrv.local:2375 "
export DOCKER_HOST=tcp://devsrv.local:2376
export DOCKER_TLS_VERIFY=1

source $ZSH/oh-my-zsh.sh
RPROMPT='[%D{%L:%M%P}]'
export MUTTCFG="home"
alias mw="MUTTCFG='work' mutt"
alias mh="MUTTCFG='home' mutt"

eval $(keychain --eval --quiet id_rsa github.priv router.priv )


