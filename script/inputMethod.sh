echo "=======installing chinese input method========="
tech="https://blog.csdn.net/qq_44700366/article/details/121446162"
#install rime
sudo apt-get install ibus-rime

#config by : https://github.com/iDvel/rime-ice
ibus restart

mkdir -p ~/.config/ibus/rime
rm -rf ~/.config/ibus/rime/*
git clone https://github.com/iDvel/rime-ice.git ~/.config/ibus/rime

# 部署配置文件
ibus-daemon -drx

ibus restart

echo "you need add input method in system setting -- [keybord]"
echo "see $tech, if you fail"
