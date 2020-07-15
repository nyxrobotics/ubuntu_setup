#sudo apt-mark unhold cuda-drivers
#sudo apt remove --purge -y --allow-change-held-packages cuda-*
#sudo apt remove --purge -y --allow-change-held-packages nvidia-* bbswitch*
#sudo apt autoremove
#sudo rm /lib/modules/$(uname -r)/updates/dkms/nvidia*
#sudo rm /lib/modules/$(uname -r)/updates/dkms/vbox*



#sudo rm /lib/modules/$(uname -r)/updates/dkms/nvidia*
#sudo update-initramfs -u

mkdir -p ~/lib/nvidia
cd ~/lib/nvidia
#wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-ubuntu1604.pin
#sudo mv cuda-ubuntu1604.pin /etc/apt/preferences.d/cuda-repository-pin-600

wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo add-apt-repository -y ppa:graphics-drivers

sudo apt update
sudo apt --only-upgrade install cuda-repo-ubuntu1604
sudo apt install -y cuda-drivers=396.82-1 cuda-9-0
sudo apt-mark hold cuda-drivers

#sudo apt install -y cuda-drivers=418.152.00-1 cuda-10-1
#sudo apt-mark hold cuda-drivers

#sudo apt install nvidia-modprobe=396.82-0ubuntu1 nvidia-settings=396.82-0ubuntu1
#sudo apt-mark hold nvidia-settings nvidia-modprobe
#sudo apt install nvidia-prime
#sudo prime-select intel
#sudo prime-select nvidia