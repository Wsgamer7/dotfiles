echo "=======installing teminal apps========="

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    #Only install from apt
    #source for fasd
    sudo add-apt-repository ppa:aacebedo/fasd
    sudo apt-get update

    aptList="fasd fzf tmux python3-pip fd-find neovim curl ripgrep wget zsh"
    sudo apt-get install -y $aptList
else
    # Install using brew on macOS
    brewList="fasd fzf tmux python3 fd neovim curl ripgrep wget zsh"
    brew install $brewList
fi

#tldr
pip3 install tldr
ln -s $(which fdfind) ~/.local/bin/fd

#install oh-my-zsh
sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"
chsh -s /bin/zsh
