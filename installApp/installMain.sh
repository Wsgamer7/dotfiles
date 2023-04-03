mkdir ~/Documents/app
cd ~/Documents/app/
#source for fasd
sudo add-apt-repository ppa:aacebedo/fasd
sudo apt-get update

aptList="xdotool fasd flameshot zsh tmux python3-pip fd-find neovim curl ripgrep mosh"
sudo apt-get install -y $aptList

#need to set a key to use flameshot
#map PrtSc -> /usr/bin/flameshot gui
pip3 install tldr
tldr -u
ln -s $(which fdfind) ~/.local/bin/fd

#install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
