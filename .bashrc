test -s ~/.alias && . ~/.alias || true
shopt -s checkwinsize
export TERM=xterm-256color
PS1='\e[0;34m[ 󰙅 \w  ]  \e[m'

#---------------------pfetch------------------------#

export PF_INFO='ascii title os pkgs shell kernel uptime palette'
export PF_COL1='4'
export PF_COL3='5'
export PF_SEP=':'

#--------------------aliases-----------------------#

alias bcd='btrcd'
alias cdh='builtin cd /home/lptlv'
alias ..='builtin cd ..'
alias emacs='emacs -nw'
alias semacs='sudo emacs'
alias conf='sudo emacs ~/.config/sway/config.conf'
alias config='sudo emacs ~/.config/sway/config'
alias barconf='sudo emacs ~/.config/waybar/config'
alias barstyle='sudo emacs ~/.config/waybar/style.css'

alias ls='lsd -al'
alias ll='lsd -l'

alias dup='sudo zypper dup && sudo flatpak update -y'
alias zyn='sudo zypper in --no-recommends'
alias zynt='sudo zypper in -t pattern'
alias zyr='sudo zypper rm --clean-deps'
alias zys='zypper se'
alias zyc='sudo zypper clean --all && sudo zypper cc -a && sudo zypper purge-kernels && sudo rm /tmp/* -rf && sudo sysctl vm.drop_caches=3'
alias zyf='sudo zypper refresh'
alias vencord='sudo flatpak update com.discordapp.Discord -y &&  sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'

alias scrub='sudo btrfs scrub start /home/lptlv'
alias scrubs='sudo btrfs scrub status /home/lptlv'

alias snl='sudo snapper list'
alias snr='sudo snapper rm'

alias gitc='git clone'

alias rb='sudo reboot'

alias fetch='clear && pfetch'

#-------------------functions---------------------#



#-------------------random stuff------------------#

. "$HOME/.cargo/env"
