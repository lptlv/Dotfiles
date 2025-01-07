# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        git
        zsh-autosuggestions
        fzf
        fzf-tab
        )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

. "$HOME/.cargo/env"
test -s ~/.alias && . ~/.alias || true
export TERM=xterm-256color zsh
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_BASE='/usr/bin/fzf'

#---------------------pfetch------------------------#

export PF_INFO='ascii title os pkgs shell kernel uptime palette'
export PF_COL1='4'
export PF_COL3='5'
export PF_SEP=':'
export USER='lptlv'
export HOSTNAME='victus'

#--------------------aliases-----------------------#

alias bcd='btrcd'
alias cdh='builtin cd /home/lptlv'
alias ..='builtin cd ..'

alias emacs='emacs -nw'
alias semacs='sudo emacs'

alias .zshrc='emacs ~/.zshrc'
alias config='sh /home/lptlv/.config/wofi/scripts/configuration-options'
alias barconf='emacs ~/.config/waybar/config'
alias barstyle='emacs ~/.config/waybar/style.css'

alias ls='lsd -al'
alias ll='lsd -l'

alias dup='zypper dup --auto-agree-with-licenses && sudo flatpak update -y'
alias zyf='zypper refresh'
alias zypper='sudo zypper'

alias zyc='sudo zypper clean --all && sudo zypper cc -a && sudo zypper purge-kernels && sudo rm /tmp/* -rf && sudo rm -rf /usr/src/packages/RPMS/x86_64/* && sudo rm -rf /usr/src/packages/SPECS/* && sudo sysctl vm.drop_caches=3'

alias vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'

alias scrub='sudo btrfs scrub start /home/lptlv'
alias scrubs='sudo btrfs scrub status /home/lptlv'

alias snl='sudo snapper list'
alias snr='sudo snapper rm'

alias gitcl='git clone'
alias gitco='git commit -m "commit"'
alias gitps='git push origin master'
alias gitpl='git pull'

alias rb='sudo reboot'
alias sd='sudo shutdown now'

alias fetch='clear && pfetch'
alias swaytree="swaymsg -t get_tree | egrep '(app_id|class)'"
alias hyprtree="hyprctl clients | grep -E 'workspace|class'"
alias kvmdef='sudo virsh net-start default'

alias scr='rm -rf /home/lptlv/Pictures/Screenshots/*'

#------------------exports------------------------#

# qt fixes
export QT_QPA_PLATFORM=wayland
export QT_QTA_PLATFORMTHEME=qt5ct

# sway fixes
export XDG_CURRENT_DESKTOP=river
export XDG_SESSION_DESKTOP=river
export XDG_CURRENT_SESSION_TYPE=wayland
export MOZ_ENABLE_WAYLAND=1
export MOZ_USE_XINPUT2=1
