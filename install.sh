#!/bin/bash
files=".bashrc .gitconfig .vimrc"
for file in $files
do
	ln -s ~/dotfiles/$file ~/$file
done
