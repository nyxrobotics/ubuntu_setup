sudo apt update
sudo apt install -y synaptic aptitude htop

# >>>unity-tweak-tool(GUI-Theme)
sudo apt update
sudo apt install -y unity-tweak-tool -y
sudo add-apt-repository -y ppa:noobslab/themes
sudo apt update
sudo apt install -y arc-theme

# >>>terminator
sudo apt install terminator
# set as default terminal
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

# >>>ricty
# install fontforge
mkdir ricty_tmp
cd ricty_tmp
sudo apt -y install -y fontforge
# install Inconsolata
wget http://levien.com/type/myfonts/Inconsolata.otf
mkdir -p ~/.fonts
cp Inconsolata.otf ~/.fonts
# unzip Migu
unzip migu-1m-20150712.zip
cp migu-1m-20150712/* .ttf ~/.fonts
# clone
git clone https://github.com/metalefty/Ricty.git
# generate & install Ricty
cd Ricty
bash ricty_generator.sh auto
cp -f Ricty*.ttf ~/.fonts/
fc-cache -vf
cd ../..
rm -r ricty_tmp

