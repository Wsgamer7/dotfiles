#ssh
ln -sf ~/dotfiles/config/.ssh/config ~/.ssh/
#aliyunpan
ln -sf ~/dotfiles/config/sync_drive_config.json /etc/aliyunpan/sync_drive/sync_drive_config.json
#clash
sh ~/dotfiles/config/clash/install.sh
#--------------dotfiles located at ~/ --------------------

#vim
ln -sf ~/dotfiles/config/.vimrc ~/
#tmux
ln -sf ~/dotfiles/config/.tmux.conf ~/
#git
ln -sf ~/dotfiles/config/.gitconfig ~/