#ssh
ln -sf ~/dotfiles/config/.ssh/config ~/.ssh/

#aliyunpan (add config env varible : see dotfile/.env)
mkdir -p ~/.config/aliyunpan
ln -sf $(pwd)/sync_drive_config.json ~/.config/aliyunpan/sync_drive/

#clash
sh ~/dotfiles/config/clash/install.sh

#pip3
mkdir -p ~/.config/pip
ln -sf ~/dotfiles/config/pip.conf ~/.config/pip/pip.conf
#--------------dotfiles located at ~/ --------------------

#tmux
ln -sf ~/dotfiles/config/.tmux.conf ~/
#git
git config --global core.excludesfile ~/.gitignore_global

ln -sf ~/dotfiles/config/.gitignore_global ~/
ln -sf ~/dotfiles/config/.gitconfig ~/

#IDEA
ln -sf ~/dotfiles/config/idea/maven_settings.xml ~/.m2/settings.xml
