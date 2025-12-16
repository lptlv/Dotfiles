#!/bin/sh
cp -r .floorp ~
cp -r .config/* ~/.config/
cp -r .icons ~
mv .zshrc ~

sudo transactional-update run zypper ar -cfp 90 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials/' packman-essentials
