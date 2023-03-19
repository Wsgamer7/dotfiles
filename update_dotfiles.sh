#!/bin/bash
files=".bashrc .vimrc .gitconfig"
for file in $files
do
	cp ~/$file ~/dotfiles
done
