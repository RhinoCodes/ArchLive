#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

echo 'Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.'

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist
git clone https://github.com/RhinoCodes/dwmblocks_vanilla.git
git clone https://github.com/RhinoCodes/dwm_archlive.git
git clone https://git.suckless.org/dmenu
cd dwmblocks_vanilla
make
sudo make clean install
cd ../dwm_archlive
make
sudo make clean install
cd ../dmenu
make
sudo make clean install
