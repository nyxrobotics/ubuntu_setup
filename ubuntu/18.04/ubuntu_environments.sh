#!/bin/bash
SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
cd $SCRIPT_DIR/bash_scripts
bash ubuntu_tools.sh
bash fix_firmware.sh
bash popup_block.sh
bash set_wallpaper.sh
bash ricty.sh
bash sublimetext3.sh
bash nvidia.sh
