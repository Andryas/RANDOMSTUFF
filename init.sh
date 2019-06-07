#!/bin/bash

# Add path to script sh
echo 'export PATH=$PATH:/home/$USER/Documentos/gitlab/randomstuff/sh/' >> ~/.bashrc

# Install Steam
sudo apt-get install steam -y

# Firefox
sudo apt-get install libavcodec-extra -y

# Install Compiz
sudo apt-get install compizconfig-settings-manager compiz-plugins -y

# Gnome Tweaks
sudo apt install gnome-shell-extensions chrome-gnome-shell

# Install Mongo
sudo apt-get install mongodb

# Install samba
sudo apt-get install samba

# Libs
sudo apt-get install libcurl4-openssl-dev libxml2-dev libssl-dev -y
sudo apt-get install -y libgsl-dev
sudo apt-get install -y libcairo2-dev
sudo apt-get install -y build-essential
sudo apt-get install -y libcurl4-gnutls-dev
sudo apt-get install -y libexpat1-dev
sudo apt-get install -y texlive-full # For Latex
sudo apt-get install libglu1-mesa-dev -y
sudo apt-get install libfreetype6-dev -y
sudo apt-get install -y libsasl2-dev -y
sudo apt-get install -y openssl
sudo apt-get install -y net-tools
sudo apt-get install -y openssh-server
sudo apt-get install -y libgdal-dev

