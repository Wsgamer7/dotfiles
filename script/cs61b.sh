#! /usr/bin/zsh

xdotool key Ctrl+Super+Left
google-chrome https://www.vocabulary.com/ &
sleep 0.8
xdotool key Super+Up

xdotool key Ctrl+Super+Right
google-chrome --new-window https://sp18.datastructur.es/ &  
sleep 0.8
xdotool key Super+Up


xdotool key Ctrl+Super+Right
sh /opt/idea-IC-222.4167.29/bin/idea.sh
