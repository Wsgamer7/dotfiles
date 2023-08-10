#sudo apt-get update
#sudo apt -y upgrade
#add source
mkdir -p ~/Documents/app
cd ~/Documents/app/
sudo add-apt-repository multiverse

appsPreferred="linuxqq flameshot r-base rstudio"
#appsPlay="steam wemeet gimp yesplaymusic rhythmbox"

sudo apt install -y $appsPreferred
#sudo apt install -y $appsPlay

#google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
