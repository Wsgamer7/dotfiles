# use after set proxy
cd ~/Downloads/
sudo apt-get update
sudo apt -y upgrade

#steam
sudo add-apt-repository multiverse
sudo apt install -y steam

#R
sudo apt -y install r-base
wget https://download1.rstudio.org/electron/jammy/amd64/rstudio-2023.03.0-386-amd64.deb
sudo apt install -f ./rstudio-2023.03.0-386-amd64.deb

#chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

#qq
wget https://dldir1.qq.com/qqfile/qq/QQNT/2355235c/linuxqq_3.1.1-11223_amd64.deb
sudo dpkg -i linuxqq_3.1.1-11223_amd64.deb

#腾讯会议
wget https://updatecdn.meeting.qq.com/cos/1b001ef75914a1d6948decb8c2550b47/TencentMeeting_0300000000_3.14.0.401_x86_64_default.publish.deb
sudo dpkg -i TencentMeeting_0300000000_3.14.0.401_x86_64_default.publish.deb

#GIMP
apt-cache search ^gimp
sudo apt install gimp

#yesplaymusic
wget https://github.com/qier222/YesPlayMusic/releases/download/v0.4.7/yesplaymusic_0.4.7_amd64.deb
sudo dpkg -i yesplaymusic_0.4.7_amd64.deb

#rhythmbox
sudo add-apt-repository ppa:ubuntuhandbook1/rhythmbox
sudo apt install rhythmbox

#vlc
sudo apt install vlc -y
