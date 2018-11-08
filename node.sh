lazy_source () {
    eval "$1 () { [ -f $2 ] && source $2 && $1 \$@ }"
}

export NVM_DIR="$HOME/.nvm"
lazy_source nvm "/usr/local/opt/nvm/nvm.sh"
# . "/usr/local/opt/nvm/nvm.sh"
