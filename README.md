# Archlive
ArchLive is a custom archiso that has a DE or WM preinstalled, so you can have the archwiki open right next to 
your terminal. Basically its a comfier install iso. It also has possibility
to be used as a Rescue pendrive. It includes tools like "Grub rescue", from MX linux and gparted.

TLDR; ArchLive is a live iso with a Desktop Enviroment 

Current 3 main iso's:
 * Openbox
 * Xfce
 * KDE Plasma
 
Choose the iso to your hardware power or preference.
DWM and systemd free isos are not supported in 100%, just keep that in mind.

## Grub Rescue
Szybet added grub rescue which allows you to boot to systems (Windows also), or just efi files.
Its good for troubleshooting.

## How to Build
You need those packages and a Arch based distro:

`arch-install-scripts`

`bash`

`dosfstools`

`e2fsprogs`

`libisoburn`

`squashfs-tools`

or

`archiso`

Then just run `./mkarchiso -v .` in the profile dir, as root, the iso will be in `out/`
To rebuild remove `work/` and `out/` as root (`# rm -rf work out`).

## PR's Welcome
Anyone is welcome to PR a new iso in, just look at the [archiso wiki](https://wiki.archlinux.org/index.php/archiso)

Also for installing archlinux, the [wiki](https://wiki.archlinux.org/index.php/Installation_guide) is the best guide.
For any questions you are welcome on our discord server.

## DWM Tutorial
 * `Super+p` - dmenu (Command Launcher)
 * `Super+q` - Close Window

### [Discord](https://discord.gg/a9DtayU)
For any questions :)
