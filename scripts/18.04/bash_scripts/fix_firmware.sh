#!/bin/bash

# install latest rtl8125a-3 drivers (they are too old in ubuntu18.04)
mkdir -p ~/lib
cd ~/lib
#Fix rtl8125a
#git clone https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
#sudo cp ./linux-firmware/rtl_nic/rtl8125a-3.fw /lib/firmware/rtl_nic/rtl8125a-3.fw

#Fix ath10k
sudo rm -r /lib/firmware/ath10k
sudo cp -r ./linux-firmware/ath10k/ /lib/firmware/

sudo update-initramfs -u
