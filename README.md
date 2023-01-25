# dotfiles

Clone this repo into ~/.dotfiles, then add the following line to `.bash_profile`:

    source ~/.dotfiles/index.sh

And in your ~/.gitconfig:

	[include]
		path = ~/.dotfiles/git/gitconfig

### Vim
	git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
