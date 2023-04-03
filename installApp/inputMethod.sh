tech="https://blog.csdn.net/qq_44700366/article/details/121446162"
#install rime
sudo apt-get install ibus-rime

#config by : https://github.com/jayknoxqu/ibus-rime
ibus restart

cd ~/Downloads/
# 下载配置文件
git clone https://github.com/jayknoxqu/ibus-rime.git

mkdir -p ~/.config/ibus/rime
# 复制配置文件
cp -r ibus-rime/* ~/.config/ibus/rime/

# 部署配置文件
ibus-daemon -drx

ibus restart

echo "you need add input method in system setting"
echo "see $tech, if you fail"