#! /bin/bash
#install dotfiles
sh ~/dotfiles/install.sh
 
#install terminal apps
sh ~/dotfiles/prepareNewSystem/installApp/terminalApps.sh

#fix error and source
sh ~/dotfiles/prepareNewSystem/installSource.sh
