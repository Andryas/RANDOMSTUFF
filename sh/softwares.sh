# Chrome
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
sudo dpkg -i chrome.deb
sudo apt-get install -f
sudo apt update

# snap
sudo apt install snapd

# Hugo 
sudo snap install hugo

# Git
sudo apt install git -y

# Gparted
sudo apt install gparted

# Docker
sudo apt install docker.io

# htop
sudo apt install htop -y

# gdebi
sudo apt install gdebi -y

# rstudio
wget https://s3.amazonaws.com/rstudio-ide-build/desktop/bionic/amd64/rstudio-1.3.926-amd64.deb rstudio.deb
sudo gdebi rstudio-*.deb

# vscode
sudo snap install code --classic

# extension for firefox
sudo apt install libavcodec-extra -y

# slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb slack.deb
sudo dpkg -i slack-desktop*.deb
sudo apt-get install -f

# discord
sudo snap install discord --classic

# R
sudo apt-get update -y
sudo apt-get install libatlas3-base -y
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
sudo apt update
sudo apt-get install r-base r-base-dev -y

### Libs R
sudo apt install libxml2-dev libssl-dev libcurl4-openssl-dev libmariadbclient-dev libgsl0-dev -y

# pip3
sudo apt install python3-pip

# mongodb
sudo apt install mongodb

# mysql
sudo apt install mysql-server -y
sudo mysql_secure_installation utility

sudo apt install mysql-workbench -y

# vpn
sudo apt install openfortivpn -y

# Mega
wget https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/amd64/megasync-xUbuntu_$(lsb_release -rs)_amd64.deb -O megasync.deb
wget https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/amd64/nautilus-megasync-xUbuntu_$(lsb_release -rs)_amd64.deb -O nautilus-megasync.deb
sudo dpkg -i megasync.deb
sudo dpkg -i nautilus-megasync.deb
sudo apt install -f -y

# Install samba
sudo apt-get install samba -y

# Install Steam
sudo apt-get install steam -y

# tweeks
sudo apt install -y gnome-tweaks
sudo apt-get install gnome-tweak-tool

# sudo apt-get install -y texlive-full # For Latex
# echo 'export PATH=$PATH:/home/$USER/Documentos/github/RANDOMSTUFF/sh' >> ~/.bashrc

# mirror tablet/android
sudo snap install scrcpyscr

# Stacer
sudo add-apt-repository ppa:oguzhaninan/stacer -y
sudo apt-get update
sudo apt-get install stacer -y

# Finish
sudo apt update
sudo apt upgrade -y




