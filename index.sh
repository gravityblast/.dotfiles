source ~/.dotfiles/git.sh
source ~/.dotfiles/postgres.sh
source ~/.dotfiles/rvm.sh
source ~/.dotfiles/node.sh
source ~/.dotfiles/bundler.sh

PS1='\u@\h:\W$(git_prompt)\$ '