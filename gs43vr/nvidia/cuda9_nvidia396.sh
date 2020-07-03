#sudo apt remove --purge -y --allow-change-held-packages cuda-*
#sudo apt remove --purge -y --allow-change-held-packages nvidia-*
#sudo apt autoremove

mkdir -p ~/setup/nvidia
cd ~/setup/nvidia
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo add-apt-repository ppa:graphics-drivers

sudo apt update
sudo apt install cuda-drivers=396.82-1 cuda-9-0
sudo apt-mark hold cuda-drivers

#sudo apt install nvidia-settings=396.82-0ubuntu1 nvidia-prime
#sudo apt-mark hold nvidia-settings
#sudo prime-select intel
#sudo prime-select nvidia