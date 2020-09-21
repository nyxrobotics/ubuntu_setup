#!/bin/bash

sudo apt-mark unhold cuda-drivers
#sudo aptitude purge ~ncuda
sudo apt remove -y --allow-change-held-packages "*cuda*" "*nvidia*"
sudo apt autoremove -y

mkdir -p ~/lib/nvidia
cd ~/lib/nvidia

if [ -f "cuda-repo-ubuntu1604_9.0.176-1_amd64.deb" ]; then
    echo "cuda-repo-ubuntu1604_9.0.176-1_amd64.deb exists."
else
    wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
fi

sudo dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub

sudo apt update
sudo apt --only-upgrade install cuda-repo-ubuntu1604
sudo apt install -y cuda-drivers=418.152.00-1 cuda-10-0

sudo apt-mark hold cuda-drivers

if ! grep -Fxq "## CUDA and cuDNN paths" ~/.bashrc
then
    echo -e "\n## CUDA and cuDNN paths"  >> ~/.bashrc
    echo 'export PATH=/usr/local/cuda-10.0/bin:${PATH}' >> ~/.bashrc
    echo 'export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64:${LD_LIBRARY_PATH}' >> ~/.bashrc
    source ~/.bashrc # CUDAのパスが書き込まれた~/.bashrcを読み込む。
fi