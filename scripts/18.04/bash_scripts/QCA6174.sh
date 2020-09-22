#!/bin/bash

# install latest rtl8125a-3 drivers (they are too old in ubuntu18.04)
mkdir -p ~/lib
cd ~/lib
echo "options ath10k_core skip_otp=Y" | sudo tee /etc/modprobe.d/ath10k_core.conf
sudo rm -r /lib/firmware/ath10k/QCA6174/
git clone https://github.com/atondwal/ath10k-firmware.git
sudo cp -r ath10k-firmware/ath10k/ /lib/firmware/
#cd /lib/firmware/ath10k/QCA6164
#sudo cp -r hw2.1/ /lib/firmware/ath10k/QCA6174/
sudo update-initramfs -u

# Disable Powersave
sudo sed -i 's/wifi.powersave = 3/wifi.powersave = 2/' /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf

