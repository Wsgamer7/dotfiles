if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    cd ~/dotfiles/script
    echo "change apt source for china user"
    cat source22 | sudo tee /etc/apt/sources.list
    sudo apt update
fi
