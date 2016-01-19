
export SSH_ASKPASS=/usr/lib/ssh/ssh-askpass
export GOPATH=~/Projects/gopath/
export TF_AUTO_SAVE_CREDENTIALS=0
export PATH="/usr/local/bin:$HOME/Applications:$HOME/Projects/gopath/bin:$HOME/Applications/TEE-CLC-14.0.2/:$PATH"

export LANG=en_US.UTF-8

export EDITOR='vim'
export VISUAL='vim'

# OPAM configuration
. /home/guy/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval `opam config env`

