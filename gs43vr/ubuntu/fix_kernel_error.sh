mkdir -p ~/setup/ubuntu
cd ~/setup/ubuntu
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915/bxt_guc_ver8_7.bin
wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915/kbl_guc_ver9_14.bin
sudo cp ./*.bin /lib/firmware/i915/
sudo update-initramfs -u
