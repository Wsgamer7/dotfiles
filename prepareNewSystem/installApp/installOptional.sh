#sudo apt-get update
#sudo apt -y upgrade
#add source
sudo add-apt-repository multiverse

appsPreferred="linuxqq flameshot r-base rstudio"
#appsPlay="steam wemeet gimp yesplaymusic rhythmbox"

sudo apt install -y $appsPreferred
#sudo apt install -y $appsPlay


cd ~/Downloads/

#google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

#wps
#wget https://linux-bucket.ks3-cn-beijing.ksyun.com/wps/download/ep/Linux2019/11691/wps-office_11.1.0.11691_amd64.deb
#sudo dpkg -i wps-office*.deb
