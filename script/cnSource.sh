cd ~/dotfiles/script
echo "change apt source for china user"
cat source20 | sudo tee /etc/apt/sources.list
sudo apt update
