#!/bin/bash

# >>>set wallpaper
SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
cd $SCRIPT_DIR/../../wallpaper
WALLPAPER_DIR=$(pwd)
#echo -e ¨$WALLPAPER_DIR/happy.png¨
gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER_DIR/black.png"