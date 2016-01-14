export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="clean"

plugins=(git archlinux docker git-extras lein mercurial npm redis-cli systemd taskwarrior )

#alias 1pwd="firefox --new-tab http://localhost:8000/1Password.html"


source $ZSH/oh-my-zsh.sh
RPROMPT='[%D{%L:%M%P}]'

[ -s "/home/guy/.dnx/dnvm/dnvm.sh" ] && . "/home/guy/.dnx/dnvm/dnvm.sh" # Load dnvm
