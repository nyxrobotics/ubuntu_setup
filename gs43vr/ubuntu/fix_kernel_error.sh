mkdir -p ~/setup/ubuntu
cd ~/setup/ubuntu
git clone https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
sudo cp linux-firmware/i915/*.bin /lib/firmware/i915/
sudo cp linux-firmware/nvidia /lib/firmware/

#sudo ubuntu-drivers autoinstall
#sudo update-initramfs -u

#wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915/bxt_guc_ver8_7.bin
#wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915/kbl_guc_ver9_14.bin
#sudo cp ./*.bin /lib/firmware/i915/
#sudo update-initramfs -u
