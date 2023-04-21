mkdir ~/Documents/app
cd ~/Documents/app/
#source for fasd
sudo add-apt-repository ppa:aacebedo/fasd
sudo apt-get update

aptList="fasd flameshot zsh tmux python3-pip fd-find neovim curl ripgrep mosh wget"
sudo apt-get install -y $aptList

#need to set a key to use flameshot
#map PrtSc -> /usr/bin/flameshot gui
pip3 install tldr
tldr -u
ln -s $(which fdfind) ~/.local/bin/fd

#install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
#install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
