echo "install pandoc-crossref@v0.3.17.1 and pandoc@v3.1.13"
cd ~/download
wget https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.17.1/pandoc-crossref-Linux.tar.xz
wget https://github.com/jgm/pandoc/releases/download/3.1.13/pandoc-3.1.13-1-amd64.deb

tar -zxvf pandoc-crossref-Linux.tar.gz
cp pandoc-crossref ~/.local/bin/
sudo dpkg -i pandoc*.deb
