export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="clean"

plugins=(git archlinux docker git-extras lein mercurial npm redis-cli systemd taskwarrior )

function regex { gawk 'match($0,/'$1'/, ary) { print ary['${2:-'0'}']}'; }

source $ZSH/oh-my-zsh.sh
RPROMPT='[%D{%L:%M%P}]'

[ -s "/home/guy/.dnx/dnvm/dnvm.sh" ] && . "/home/guy/.dnx/dnvm/dnvm.sh" # Load dnvm
