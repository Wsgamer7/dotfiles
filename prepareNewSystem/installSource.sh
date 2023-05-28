sudo cp /etc/apt/sources.list sources.list.backup
cd ~/dotfiles/prepareNewSystem
cat source163 | sudo tee /etc/apt/sources.list
sudo apt update
