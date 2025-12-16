#!/bin/sh
mkdir ~/Pictures/Screenshots
mv Wallpapers ~/Pictures/
cp -r .config/* ~/.config/
cp -r .icons ~

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~

mkdir -p ~/.config/quickshell/noctalia-shell && curl -sL https://github.com/noctalia-dev/noctalia-shell/releases/latest/download/noctalia-latest.tar.gz | tar -xz --strip-components=1 -C ~/.config/quickshell/noctalia-shell

sudo transactional-update run zypper ar -cfp 90 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials/' packman-essentials
sudo transactional-update run zypper addrepo https://download.opensuse.org/repositories/home:/astra/openSUSE_Tumbleweed home:astra/Tumbleweed
