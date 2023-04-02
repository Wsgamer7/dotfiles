#install rime
sudo apt-get install ibus-rime

#config by : https://github.com/jayknoxqu/ibus-rime
ibus restart

cd ~/Download/
# 下载配置文件
git clone https://github.com/jayknoxqu/ibus-rime.git

# 复制配置文件
cp -r ibus-rime/* ~/.config/ibus/rime

# 部署配置文件
ibus-daemon -drx