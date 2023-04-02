#! /bin/bash
# install by all installer recursively
bash ~/dotfiles/config/clash/install.sh
for fold in runcom startup config; do
    bash ~/dotfiles/$fold/install.sh
done

#undo
echo "undo:"
echo "1.inputMethod, do it by sudo bash ~/dotfiles/installApp/inputMethod.sh"
echo "2.clash, please add an airport"
echo "3.software source"