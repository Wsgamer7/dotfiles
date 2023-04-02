# install by all installer recursively
for installer in ~/dotfiles/{runcom,installApp,config,startup}/install.sh; do
    sudo bash installer
done

#undo
echo "undo:"
echo "1.inputMethod, do it by sudo bash ~/dotfiles/installApp/inputMethod.sh"
echo "2.clash, please add an airport"
echo "3.software source"