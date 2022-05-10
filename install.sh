#!/bin/bash

if [ ! -d "$HOME/.local/share/gnome-shell/extensions" ]; then mkdir "$HOME/.local/share/gnome-shell/extensions"; fi

# ArcMenu
mkdir ~/arcmenu
cd ~/arcmenu
git clone https://gitlab.com/arcmenu/ArcMenu.git .
make install

# Dash to Panel
mkdir ~/dashtopanel
cd ~/dashtopanel
git clone https://github.com/home-sweet-gnome/dash-to-panel.git .
make install

# Tray Icons Reloaded
mkdir ~/trayicons
cd ~/trayicons
git clone https://github.com/MartinPL/Tray-Icons-Reloaded .
mkdir -p ~/.local/share/gnome-shell/extensions/trayIconsReloaded@selfmade.pl
cp -r * ~/.local/share/gnome-shell/extensions/trayIconsReloaded@selfmade.pl

# Sound input/output device chooser
mkdir ~/inputoutput
cd ~/inputoutput
git clone https://github.com/kgshank/gse-sound-output-device-chooser.git .
cp -r sound-output-device-chooser@kgshank.net ~/.local/share/gnome-shell/extensions/

# Bluetooth quick connect
mkdir ~/btqc
cd ~/btqc
git clone https://github.com/bjarosze/gnome-bluetooth-quick-connect .
make install

# True color invert (Win/Super + I on any window to invert colors)
mkdir ~/colorinvert
cd ~/colorinvert
git clone https://github.com/jackkenney/gnome-true-color-invert .
mkdir -p ~/.local/share/gnome-shell/extensions/true-color-invert@jackkenney
cp -r * ~/.local/share/gnome-shell/extensions/true-color-invert@jackkenney

# Clipboard
mkdir ~/clipboard
cd ~/clipboard
git clone https://github.com/Tudmotu/gnome-shell-extension-clipboard-indicator.git .
mkdir -p ~/.local/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com
cp -r * ~/.local/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com

# Tiling assistant
mkdir ~/tilingassist
cd ~/tilingassist
git clone https://github.com/Leleat/Tiling-Assistant .
bash "scripts/build.sh" -i

# Arrange Windows
mkdir ~/arrangewindows
cd ~/arrangewindows
git clone https://github.com/sunwxg/gnome-shell-extension-arrangeWindows .
make install

# Remove downloadeded files
cd ~
sudo rm -r ~/arcmenu ~/dashtopanel ~/trayicons ~/inputoutput ~/btqc ~/colorinvert ~/clipboard ~/tilingassist ~/arrangewindows

printf "\n\n\nOPERATION COMPLETED\n\n\n"
