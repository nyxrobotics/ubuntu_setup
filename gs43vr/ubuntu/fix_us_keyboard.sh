setxkbmap -layout us -variant alt-intl
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us+altgr-intl')]"
gsettings set org.gnome.desktop.input-sources xkb-options "['lv3:ralt_switch,terminate:ctrl_alt_bksp']"