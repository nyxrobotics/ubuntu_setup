sudo apt update
sudo apt install synaptic aptitude htop

# >>>unity-tweak-tool(GUI-Theme)
sudo apt update
sudo apt install unity-tweak-tool
sudo add-apt-repository ppa:noobslab/themes
sudo apt update
sudo apt install arc-theme

# >>>terminator
sudo apt install terminator
# set as default terminal
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

# >>>ricty
# install fontforge
sudo apt -y install fontforge
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
