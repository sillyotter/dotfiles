export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="clean"

plugins=(git docker git-extras lein mercurial npm redis-cli systemd taskwarrior common-aliases debian scala sudo)
#plugin tmux and envs on server might make sense.

function regex {
    gawk 'match($0,/'$1'/, ary) { print ary['${2:-'0'}']}';
}

#alias cmacs="emacsclient -t -n"
#alias emacs="emacsclient -c -n"
#alias e=emacs
#alias eg=emacs
#alias ec=cmacs

alias arm='sudo -u debian-tor arm'
alias 1pwd='chromium http://localhost:8080'
alias fsi=fsharpi --colorconsole+ --readline+ --tailcalls+ --optimize+

alias wds="wakeonlan d4:be:d9:a6:10:3f"
export DOCKER_HOST=tcp://devsrv.local:2376
export DOCKER_TLS_VERIFY=1

source $ZSH/oh-my-zsh.sh
RPROMPT='[%D{%L:%M%P}]'
export MUTTCFG="home"
alias mw="MUTTCFG='work' mutt"
alias mh="MUTTCFG='home' mutt"

export apt_pref=apt-get
#eval $(keychain --eval --quiet id_rsa github.priv router.priv )


. /home/guy/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

