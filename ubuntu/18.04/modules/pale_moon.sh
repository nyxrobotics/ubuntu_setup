#!/bin/bash

#Install Pale-moon web brouser (which supports JAVA and Flash player)
#Reference1: https://qastack.jp/ubuntu/905910/is-there-any-web-browser-with-npapi-plugins-support
#Reference2: https://itectec.com/ubuntu/ubuntu-install-java-plugin-in-pale-moon-browser/
echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/xUbuntu_18.04/ /' | sudo tee /etc/apt/sources.list.d/home:stevenpusser.list
curl -fsSL https://download.opensuse.org/repositories/home:stevenpusser/xUbuntu_18.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home:stevenpusser.gpg > /dev/null
sudo apt update
sudo apt install palemoon

mkdir -p ~/lib
cd ~/lib
#Download latest JRE
#Reference: https://gist.github.com/hgomez/9650687
#Manually download: https://java.com/ja/download/linux_manual.jsp
wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" https://javadl.oracle.com/webapps/download/AutoDL?BundleId=242980_a4634525489241b9a9e1aa73d9e118e6 \
-O - | tar -xz
#mkdir -p ~/lib/jre
#cd ~/lib/jre
#wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" https://javadl.oracle.com/webapps/download/AutoDL?BundleId=242980_a4634525489241b9a9e1aa73d9e118e6 \
#-O - | tar --strip-components=1  -xz

#Download latest flashplayer
#Manually download: https://get.adobe.com/flashplayer/
mkdir -p ~/lib/flash_player_npapi_linux.x86_64
cd ~/lib/flash_player_npapi_linux.x86_64
wget http://slackware.uk/people/alien/slackbuilds/flashplayer-plugin/build/flash_player_npapi_linux.32.0.0.403.x86_64.tar.gz \
-O - | tar -xz

#Enable JRE and FlashPlayer in Moon-Pale brouser
mkdir -p /usr/lib/mozilla/plugins/
cd /usr/lib/mozilla/plugins/
sudo ln -s ~/lib/flash_player_npapi_linux.x86_64/libflashplayer.so
sudo ln -s ~/lib/jre1.8.0_261/lib/amd64/libnpjp2.so
