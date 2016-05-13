sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y default-jdk
cd ~
wget http://www-us.apache.org/dist/spark/spark-1.6.1/spark-1.6.1-bin-hadoop2.6.tgz
tar -zxvf spark-1.6.1-bin-hadoop2.6.tgz
rm spark-1.6.1-bin-hadoop2.6.tgz
sudo mv spark-1.6.1-bin-hadoop2.6 /usr/local/
sudo bash -c "echo '127.0.1.1' $(hostname) >> /etc/hosts"
wget http://repo.continuum.io/archive/Anaconda2-4.0.0-Linux-x86_64.sh
sudo bash Anaconda2-4.0.0-Linux-x86_64.sh -b -p /usr/local/anaconda
rm Anaconda2-4.0.0-Linux-x86_64.sh
git clone https://github.com/philipobrien/dotfiles.git .dotfiles
cd ~/.dotfiles
source bootstrap.sh
cd ~/.dotfiles/vim
git submodule update --init
