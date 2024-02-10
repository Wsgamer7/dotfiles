
echo "=======installing js_env========="
sudo apt-get install -y nodejs npm 
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
