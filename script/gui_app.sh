
sudo add-apt-repository multiverse
sudo apt-get update

echo "=======installing gui app========="
mkdir -p ~/Documents/app
cd ~/Documents/app/


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
