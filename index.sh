source ~/.dotfiles/git.sh
source ~/.dotfiles/postgres.sh
source ~/.dotfiles/rvm.sh
source ~/.dotfiles/node.sh
source ~/.dotfiles/bundler.sh
source ~/.dotfiles/utils.sh


#\[\e[1;32m\][\u@\h \W]\$\[\e[0m\]


# PS1='\[\e[1;32m\]($(rvm-prompt):\[\e[1;31m\]$(git_prompt)) \[\e[1;33m\]\u@\h:\[\e[1;37m\]\W → \[\e[0m\]'

PS1='\[\e[0;32m\]\W\[\e[1;37m\]$(git_prompt): \[\e[0m\]'
