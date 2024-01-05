#!/bin/bash
ln -sf ~/dotfiles/.bashrc ~
ln -sf ~/dotfiles/.zshrc ~
ln -sf ~/dotfiles/.bash_profile ~

bash ~/dotfiles/config/install.sh

#Optional
isNewSystem=False
haveGUI=False
inCloud=False
swapEscCaps=False
dualSystem=False
inChina=False
need_rust=False
need_js=False
need_c=False
need_go=False
need_postgresSql=False

scriptPath="~/dotfiles/script/"
