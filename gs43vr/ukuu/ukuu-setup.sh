sudo apt install libgee-0.8-dev libjson-glib-dev libvte-2.91-dev valac aria2
mkdir -p ~/setup
cd ~/setup
git clone https://github.com/teejee2008/ukuu.git
cd ukuu
make all
sudo checkinstall
