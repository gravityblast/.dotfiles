source ~/.dotfiles/git.sh
source ~/.dotfiles/postgres.sh
source ~/.dotfiles/rvm.sh
source ~/.dotfiles/node.sh
source ~/.dotfiles/bundler.sh
source ~/.dotfiles/utils.sh

export TERM=xterm-256color

PS1='\[\e[0;32m\]\W\[\e[1;39m\]$(git_prompt): \[\e[0m\]'

export CUCUMBER_COLORS=comment=cyan
