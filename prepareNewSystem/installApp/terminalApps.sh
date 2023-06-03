#source for fasd
sudo add-apt-repository ppa:aacebedo/fasd
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update

aptList="fasd fzf zsh tmux python3-pip fd-find neovim curl ripgrep mosh wget nodejs npm "
sudo apt-get install -y $aptList

mkdir -p ~/Documents/app
cd ~/Documents/app/

pip3 install tldr
tldr -u
ln -s $(which fdfind) ~/.local/bin/fd

#install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

#lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
lazygit --version

#rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
