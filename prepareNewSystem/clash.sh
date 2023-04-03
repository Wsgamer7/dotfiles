#install flatpack
sudo apt install flatpak -y
sudo flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub
sudo flatpak install flathub io.github.Fndroid.clash_for_windows
echo "open clash and import airports"
echo "airport: https://dash.fscloud.cc/api/v1/client/subscribe?token=224fc31409df2534a640bcd26cabe121"
