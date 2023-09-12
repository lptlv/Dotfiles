#!/bin/sh
mv .config/* ~/.config/
mv .local/bin/sway-new-workspace ~/.local/bin

mkdir ~/.icons
mv .icons/* ~/.icons

mkdir ~/.themes
mv .themes/* ~/.themes

mkdir ~/.emacs.d
mv .emacs.d/* ~/.emacs.d

mv .bashrc ~ 
