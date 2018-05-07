#!/bin/bash

sudo apt purge nvidia-*
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt list --upgradable

# install basic tool

sudo apt-get install -y gcc g++ git make

# install nvidia driver 
wget http://us.download.nvidia.com/XFree86/Linux-x86_64/375.20/NVIDIA-Linux-x86_64-375.20.run
chmod +x NVIDIA-Linux-x86_64-375.20.run
sudo ./NVIDIA-Linux-x86_64-375.20.run


sudo apt-get install -y sudo libltdl-dev
sudo rm -rf /var/lib/apt/lists/*

wget https://raw.github.com/land-pack/docker-example/master/deb/docker-ce_18.03.0~ce-0~ubuntu_amd64.deb
sudo apt-get clean
sudo apt-get update
sudo dpkg -i docker-ce_18.03.0~ce-0~ubuntu_amd64.deb
apt-get upgrade -f docker


sudo nohup dockerd &
