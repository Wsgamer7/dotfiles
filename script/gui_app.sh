
sudo add-apt-repository multiverse
sudo apt-get update

echo "=======installing gui app========="
mkdir -p ~/Documents/app
cd ~/Documents/app/

sudo apt install -y zsh

#tldr
pip3 install tldr
tldr -u
ln -s $(which fdfind) ~/.local/bin/fd

#install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

#lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
lazygit --version

#google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
yes | sudo dpkg -i google-chrome-stable_current_amd64.deb

#rstudio
sudo apt install -y rstudio

#QQ
flatpak install flathub com.qq.QQ -y

#vscode
sudo apt-get -y install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code # or code-insiders

#figma
flatpak install flathub io.github.Figma_Linux.figma_linux -y

#yesplaymusic
flatpak install flathub io.github.qier222.YesPlayMusic -y
