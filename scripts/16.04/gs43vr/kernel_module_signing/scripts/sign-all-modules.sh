#!/bin/bash
#/usr/src/linux-headers-$(uname -r)/scripts/sign-file  sha256 /$USER/.ssl/MOK.priv /$USER/.ssl/MOK.der /lib/modules/$(uname -r)/kernel/drivers/char/drm/nvidia.ko
#/usr/src/linux-headers-$(uname -r)/scripts/sign-file  sha256 /$USER/.ssl/MOK.priv /$USER/.ssl/MOK.der /lib/modules/$(uname -r)/kernel/drivers/char/drm/nvidia-modeset.ko
#/usr/src/linux-headers-$(uname -r)/scripts/sign-file  sha256 /$USER/.ssl/MOK.priv /$USER/.ssl/MOK.der /lib/modules/$(uname -r)/kernel/drivers/char/drm/nvidia-drm.ko
#/usr/src/linux-headers-$(uname -r)/scripts/sign-file  sha256 /$USER/.ssl/MOK.priv /$USER/.ssl/MOK.der /lib/modules/$(uname -r)/kernel/drivers/char/drm/nvidia-uvm.ko
#/usr/src/linux-headers-$(uname -r)/scripts/sign-file  sha256 /$USER/.ssl/MOK.priv /$USER/.ssl/MOK.der /lib/modules/$(uname -r)/updates/vboxdrv.ko
#/usr/src/linux-headers-$(uname -r)/scripts/sign-file  sha256 /$USER/.ssl/MOK.priv /$USER/.ssl/MOK.der /lib/modules/$(uname -r)/updates/vboxnetadp.ko
#/usr/src/linux-headers-$(uname -r)/scripts/sign-file  sha256 /$USER/.ssl/MOK.priv /$USER/.ssl/MOK.der /lib/modules/$(uname -r)/updates/vboxnetflt.ko
#/usr/src/linux-headers-$(uname -r)/scripts/sign-file  sha256 /$USER/.ssl/MOK.priv /$USER/.ssl/MOK.der /lib/modules/$(uname -r)/updates/vboxpci.ko

for modfile in $(dirname $(modinfo -n bbswitch))/*.ko; do
  echo "Signing $modfile"
  sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 \
                                /home/$USER/.ssl/MOK.priv \
                                /home/$USER/.ssl/MOK.der "$modfile"
done

#sudo -v
#echo "Signing the following modules"
#for filename in /lib/modules/$(uname -r)/updates/*.ko; do
#    sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ~/.ssl/MOK.priv ~/.ssl/MOK.der $filename
#    echo "$filename"
#done
#for filename in /lib/modules/$(uname -r)/kernel/drivers/char/drm/*.ko; do
#    sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ~/.ssl/MOK.priv ~/.ssl/MOK.der $filename
#    echo "$filename"
#done
