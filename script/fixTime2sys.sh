echo "=======fix time for dual systems========="
sudo apt install -y ntpdate
sudo ntpdate time.windows.com
sudo hwclock --localtime --systohc
