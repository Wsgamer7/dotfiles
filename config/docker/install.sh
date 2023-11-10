sudo mkdir -p /etc/docker
sudo rm /etc/docker/daemon.json

sudo ln -s $HOME/dotfiles/config/docker/daemon.json /etc/docker/daemon.json

sudo systemctl daemon-reload
sudo systemctl restart docker
