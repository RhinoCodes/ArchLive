#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

echo 'Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.'

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist
echo [daemon] >> /etc/gdm/custom.conf
echo AutomaticLoginEnable=True >> /etc/gdm/custom.conf
echo AutomaticLogin=root >> /etc/gdm/custom.conf
