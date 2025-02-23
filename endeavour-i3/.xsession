#!/bin/bash

export RANGER_LOAD_DEFAULT_RC=FALSE
export TERMINAL=/usr/bin/xfce4-terminal
export TERM=$TERMINAL
export SHELL=/usr/bin/zsh
export EDITOR=/usr/bin/nvim
export VISUAL=$EDITOR
export PATH="$PATH:$HOME/linux-configs/bin"

xset m 1/1 0 # mouse accel off
xset r rate 300 50 # faster auto-repeat

# Some laptop specific settings
if [[ -f "$HOME/.Xresources_laptop" && -z $(cat /proc/cpuinfo | grep hypervisor) ]]; then
    xrdb "$HOME/.Xresources_laptop"
fi

