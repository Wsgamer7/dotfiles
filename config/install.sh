#IDEA
sh ~/dotfiles/config/idea/install.sh

#ssh
mkdir -p ~/.ssh
ln -sf ~/dotfiles/config/ssh_config ~/.ssh/config

#aliyunpan (add config env varible : see dotfile/.env)
mkdir -p ~/.config/aliyunpan
ln -sf $~/dotfiles/alipan_conf.json ~/.config/aliyunpan/sync_drive/sync_drive_config.json

#clash
mkdir -p ~/.config/clash/profiles
ln -sf ~/dotfiles/config/clash_conf.yaml ~/.config/clash/profiles/online_config.yaml

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


