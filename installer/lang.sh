if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "=======installing c_env========="
    c_env="build-essential cgdb curl default-jre git python3 python3-pip valgrind"
    cunit="libcunit1 libcunit1-doc libcunit1-dev"
    sudo apt-get install -y $c_env
    sudo apt-get install -y $cunit

    echo "=======installing go_env========="
    sudo apt install -y golang-go

    echo "=======installing node_env========="
    sudo apt-get install -y nodejs npm 
    sudo npm cache clean -f
    sudo npm install -g n
    sudo n stable
else
    echo "=======installing c_env========="
    brew install cgdb curl openjdk git python3 valgrind
    brew install cunit

    echo "=======installing go_env========="
    brew install go

    echo "=======installing node_env========="
    brew install node
fi

echo "=======installing rust_env========="
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > sh.rustup.rs
sh ./sh.rustup.rs -y