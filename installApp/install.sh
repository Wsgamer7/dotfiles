mkdir ~/Documents/app
#source for fasd
sudo add-apt-repository ppa:aacebedo/fasd
sudo apt-get update

aptList=(xdotool fasd flameshot zsh tumx python3-pip fd-find neovim)
for app in ${appList[*]};
do
	sudo apt install $app
done

#need to set a key to use flameshot
#map PrtSc -> /usr/bin/flameshot gui
pip3 install tldr
tldr -u
ln -s $(which fdfind) ~/.local/bin/fd

# load other installer
#sudo bash ~/dotfiles/installApp/inputMethod.sh
