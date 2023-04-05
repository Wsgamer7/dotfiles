echo "Base teminal app, source, config will be installed"
echo "what you want to install optionally"
echo "[1]inputMethod Chinese"
echo "[2]frequent app, such as qq, vlc-video player..."
echo "[3]auto-cpufreq, battary saver for laptop"

read select

installOptional(){
    select=$1
    case $select in 
    1) 
    bash ~/dotfiles/installApp/installMain.sh
    ;;
    2)
    bash ~/dotfiles/installApp/installOptional.sh
    ;;
    3)
    bash ~/dotfiles/installApp/auto_cpufreq.sh
    esac
}
#installMain
installMain() {
    bash ~/dotfiles/installApp/installMain.sh
    bash ~/dotfiles/installAllDotfiles.sh
}
installMain