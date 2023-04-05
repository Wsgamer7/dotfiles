#very trick with proxy, need japan.
echo "must use proxy node of japan, Have you set it [Y/n]"
read japan
if [[ $japan -eq "y" || japan -eq "Y" ]]
then
    cd ~/Documents/app/
    #auto-cpufreq
    git clone https://github.com/AdnanHodzic/auto-cpufreq.git
    cd auto-cpufreq && sudo ./auto-cpufreq-installer
    sudo auto-cpufreq --install
else 
    echo "do nothing, set proxy node to japan"
fi

