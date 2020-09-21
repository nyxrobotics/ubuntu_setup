# Reference : https://askubuntu.com/questions/607707/ath10k-installation
# Please check dmesg with below commands
# dmesg -l warn
# dmesg -l err
# dmesg |grep ath10k

mkdir -p ~/lib
cd ~/lib
git clone https://github.com/kvalo/ath10k-firmware.git
sudo cp -r ath10k-firmware/* /lib/firmware/ath10k/
cd /lib/firmware/ath10k/QCA6174/hw3.0
sudo cp firmware-4.bin_WLAN.RM.2.0-00180-QCARMSWPZ-1 firmware-4.bin
sudo cp firmware-4.bin_WLAN.RM.2.0-00180-QCARMSWPZ-1 firmware-5.bin
sudo cp firmware-4.bin_WLAN.RM.2.0-00180-QCARMSWPZ-1 firmware-6.bin

#sudo chmod +x firmware-*
#sudo chmod +x board*