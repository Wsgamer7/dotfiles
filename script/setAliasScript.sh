#! /usr/bash
# $1:alias $2:path of script(need in startup dictionary)

#now bad implemention

aliasFile="/home/user/dotfiles/.alias"
aliased="($1)=($2)"
cat $aliasFile
echo $aliased >> $aliasFile
source $aliasFile
