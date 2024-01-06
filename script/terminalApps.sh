echo "=======installing teminal apps========="
#Only install from apt
#source for fasd
sudo add-apt-repository ppa:aacebedo/fasd
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update

aptList="fasd fzf tmux python3-pip fd-find neovim curl ripgrep wget "
sudo apt-get install -y $aptList

