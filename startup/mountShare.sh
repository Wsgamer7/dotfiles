#windows C disk
sudo mount /dev/nvme0n1p3 ~/Documents/win10
#Misic share disk
sudo ntfsfix /dev/sda1
sudo mount -o rw /dev/sda1 ~/Music
