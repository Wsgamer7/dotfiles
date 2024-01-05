#very trick with proxy, need japan.
echo "=======installing auto_cpufreq========="
echo "must use proxy node of japan, Have you set it [Y/n]"
mkdir -p ~/Documents/app
cd ~/Documents/app/
#auto-cpufreq
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
sudo auto-cpufreq --install

