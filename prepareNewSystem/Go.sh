#! /bin/bash
#install dotfiles
sh ~/dotfiles/install.sh
 
#fix error and source
sh ~/dotfiles/prepareNewSystem/installSource.sh

#install terminal apps
sh ~/dotfiles/prepareNewSystem/installApp/terminalApps.sh

