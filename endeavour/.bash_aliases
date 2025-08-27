#!/bin/bash

usb-mountpoints() {
    IFS=$"\n" read -r MOUNTPOINTS <<< $(findmnt -l | grep /dev/sdb)
    for MOUNTPOINT in "${MOUNTPOINTS[@]}"
    do
        # bash way of substringing on first whitespace
        echo "${MOUNTPOINT%% *}"
    done
}

usb-unmount() {
    IFS=$"\n" read -r MOUNTPOINTS <<< $(findmnt -l | grep /dev/sdb)
    for MOUNTPOINT in "${MOUNTPOINTS[@]}"
    do
        # bash way of substringing on first whitespace
        umount "${MOUNTPOINT%% *}"
    done
    # power off
    udisksctl power-off -b /dev/sdb
}

alias ls="ls --color=auto"
alias ll="ls --color=auto -l"
alias la="ls --color=auto -la"
alias grep="grep --color=auto"

mkdircd() {
    mkdir -p "$1" && cd "$1"
}

alias gdiff="git diff"
alias gstat="git status"
#alias glog exists by zsh I think

alias ra="ranger"
alias zt="zathura"

alias rausb="ra $(usb-mountpoints)"

# Fast config editing
alias cfg="ranger ~/.config"
alias editbash="$EDITOR ~/.bashrc"
alias editalias="$EDITOR ~/.bash_aliases"
alias editzsh="$EDITOR ~/.zshrc"
alias editnvim="$EDITOR ~/.config/nvim/init.lua"
alias editi3="ranger ~/.config/i3"
alias edithypr="ranger ~/.config/hypr"
alias editwaybar="ranger ~/.config/waybar"
alias editpanel="ranger ~/.config/hyprpanel"
alias editpicom="$EDITOR ~/.config/picom/picom.conf"
alias editrofi="ranger ~/.config/rofi"
alias editrofitheme="ranger ~/.local/share/rofi/themes"

alias bmv="thunar --bulk-rename"
alias shreload="source ~/.bashrc"

new () {
    nohup "$@" >&/dev/null &
}
alias nt="new $TERM"
alias newzt="new zathura"

pdf() {
    pdftotext "$1" - | fmt -w ${2-"160"} | less
}

files() {
    for FILE in $@; do file $FILE ; done
}
alias tmuxnuke="tmux kill-session"


