#! /usr/bash
#add your novel link
gamers="https://www.wenku8.net/novel/2/2082/index.htm"
youki="https://www.wenku8.net/novel/2/2254/index.htm"

echo "select the novel you want:"
echo "[0]gamers!"
echo "[1]youki"

read index

case $index in
	0) open $gamers &;;
	1) open $youki &;;
esac
