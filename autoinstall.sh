#!/bin/sh
mkdir ~/Pictures/Screenshots
mv Wallpapers ~/Pictures/
cp -r .config/* ~/.config/
cp -r .icons ~
mv .zshrc ~

sudo transactional-update run zypper ar -cfp 90 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials/' packman-essentials
sudo transactional-update run zypper addrepo https://download.opensuse.org/repositories/home:/astra/openSUSE_Tumbleweed home:astra/Tumbleweed
