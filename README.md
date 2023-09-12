# Info

This repository was made as a personal backup for my workflow on the Sway Window Manager (https://swaywm.org/) and contains all the keybinds and terminal shortcuts I am used to, for the distro I use. Some files may or may not have stuff that you have to modify in order to reflect your workspace. Use at your own risk. I will not fix any personal issues if something does not work.

# Dependencies

```xwayland```, \
```wayland-protocols```, \
```wayland-utils```, \
```wayland-egl``` (nvidia only)

# Fonts

Install fonts from the repositories linked below, extract them and move them to ```~/.fonts``` or ```/usr/share/fonts```

Iosevka Slab font: https://github.com/be5invis/Iosevka/releases/download/v26.3.3/ttf-iosevka-slab-26.3.3.zip

Nerd Font Symbols: https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/NerdFontsSymbolsOnly.zip

# Installation

Clone into the repository and enter it:
```
git clone https://github.com/lptlv/Dotfiles && cd Dotfiles
```

Make the installation script executable:
```
chmod +x install.sh
```

Run it:
```
./install.sh
```
