export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="clean"

plugins=(git)

source $ZSH/oh-my-zsh.sh
RPROMPT='[%D{%L:%M%P}]'

[ -s "/home/guy/.dnx/dnvm/dnvm.sh" ] && . "/home/guy/.dnx/dnvm/dnvm.sh" # Load dnvm
