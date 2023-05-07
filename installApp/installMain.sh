mkdir ~/Documents/app
cd ~/Documents/app/
#source for fasd
sudo add-apt-repository ppa:aacebedo/fasd
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update

aptList="fasd kitty fzf zsh tmux python3-pip fd-find neovim curl ripgrep mosh wget nodejs npm "
sudo apt-get install -y $aptList

pip3 install tldr
tldr -u
ln -s $(which fdfind) ~/.local/bin/fd

#install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

#lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
lazygit --version

#google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

#rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
