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
