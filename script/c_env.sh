echo "=======installing c_env========="
c_env="build-essential cgdb curl default-jre git python3 python3-pip valgrind"
cunit="libcunit1 libcunit1-doc libcunit1-dev"
sudo apt-get install -y $c_env
sudo apt-get install -y $cunit
