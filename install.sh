DOT_FILES=$HOME/.dotfiles

# sudo pacman -Sy --noconfirm --needed `cat packages.txt | grep -v ^#`

# # git
# rm -rf $HOME/.gitconf
# ln -s $DOT_FILES/git/gitconfig $HOME/.gitconfig

# # zsh
# ZSH_HOME=$HOME/.oh-my-zsh
# rm -rf $ZSH_HOME
# git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $ZSH_HOME
# chsh -s $(which zsh) $(whoami)
# rm -f $HOME/.zshrc
# cp $DOT_FILES/zshrc.user $HOME/.zshrc

# # vim
# rm -rf $HOME/.config/nvim
# rm -rf $HOME/.vim
# ln -s $DOT_FILES/config/nvim/ $HOME/.config/
# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# nvim +silent +PlugInstall +qall
# nvim +silent +GoInstallBinaries +qall

# # node
# rm -rf $HOME/.nvm
# export NVM_DIR="$HOME/.nvm" && (
#   git clone https://github.com/creationix/nvm.git "$NVM_DIR"
#   cd "$NVM_DIR"
#   git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
# ) && \. "$NVM_DIR/nvm.sh"
# nvm install node


# rm -f $HOME/.Xresources.bak
# mv $HOME/.Xresources $HOME/.Xresources.bak
# ln -s $DOT_FILES/Xresources $HOME/.Xresources

# rm -rf $HOME/.config/i3
# ln -s $DOT_FILES/config/i3/ $HOME/.config

# rm -f $HOME/.config/i3status
# ln -s $DOT_FILES/config/i3status/ $HOME/.config

# rm -f $HOME/.config/dunst
# ln -s $DOT_FILES/config/dunst/ $HOME/.config


# ssh-agent
mkdir -p $HOME/.config/systemd/user/
rm -f $HOME/.config/systemd/user/ssh-agent.service
ln -s $DOT_FILES/config/systemd/user/sh-agent.service $HOME/.config/systemd/user/ssh-agent.service

# redshit
# rm -rf $HOME/.config/redshift
# ln -s $DOT_FILES/config/redshift $HOME/.config
# systemctl --user enable redshift.service

gsettings set org.gnome.settings-daemon.peripherals.keyboard repeat-interval 15
gsettings set org.gnome.settings-daemon.peripherals.keyboard delay 150
