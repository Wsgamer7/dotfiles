#install flatpack
sudo apt install flatpak -y
sudo flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub
sudo flatpak install flathub io.github.Fndroid.clash_for_windows
echo "open clash and import airports"
echo "airport: https://wobushitishen1.xyz/api/v1/client/subscribe?token=bc677a377cff8d8e8f0cfe4704c927a1"
echo "airport: https://two.mojieurl.com/api/v1/client/subscribe?token=45e415a553abc3d748a1aa5681003e68"
