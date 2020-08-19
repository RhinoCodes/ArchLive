#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

echo 'Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.'

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu
cd dwm
mkdir patches
cd patches
curl -LO https://dwm.suckless.org/patches/vanitygaps/dwm-vanitygaps-20200610-f09418b.diff
cd ..
patch -p1 < patches/dwm-vanitygaps-20200610-f09418b.diff
make
make clean install
cd ..
cd st
make
make clean install
cd ..
cd dmenu 
make 
make clean install
