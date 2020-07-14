# Reference : https://stackoverflow.com/questions/61248315/sign-virtual-box-modules-vboxdrv-vboxnetflt-vboxnetadp-vboxpci-centos-8
# Check kernel module dir (usually "/lib/modules/4.15.0-107-generic/updates/dkms/")
# modinfo -n nvidia_418
# dirname $(modinfo -n bbswitch)
# dirname $(modinfo -n vboxdrv)
# modinfo nvidia-418

mkdir -p ~/setup/kernel_module_signing
cd ~/setup/kernel_module_signing

#1- Install mokutil package
sudo apt install mokutil
#2- Create RSA key under new folder.
sudo -i
mkdir /root/signed-modules
cd /root/signed-modules
openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=$USER/"
chmod 600 MOK.priv
#3- This command will ask you to add a password, you need this password after the next reboot.
sudo mokutil --import MOK.der
#4- Reboot your system and a blue screen appear, select Enroll MOK --> Continue --> put the previous password and your system will start.
#5- Put the previous cmmands in a script to run it later (after system update)
cd /root/signed-modules
vi sign-virtual-box

#sudo mokutil --disable-validation

#sudo chmod +x firmware-*
#sudo chmod +x board*

/usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 \
                                /root/signed-modules/MOK.priv \
                                /root/signed-modules/MOK.der "$modfile"

#!/bin/bash

for modfile in $(dirname $(modinfo -n vboxdrv))/*.ko; do
  echo "Signing $modfile"
  /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 \
                                /root/signed-modules/MOK.priv \
                                /root/signed-modules/MOK.der "$modfile"
done
\

scripts/sign-file sha512 kernel-signkey.priv kernel-signkey.x509 module.ko