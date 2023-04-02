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

#install flatpack
sudo apt install flatpak
sudo flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub

#install by git
cd ~/Download/

#auto-cpufreq
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
sudo auto-cpufreq --install

# load other installer
#sudo bash ~/dotfiles/installApp/inputMethod.sh