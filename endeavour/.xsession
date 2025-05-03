#!/bin/bash

export RANGER_LOAD_DEFAULT_RC=FALSE
#export TERMINAL=/usr/bin/xfce4-terminal
#export TERM=$TERMINAL
#export SHELL=/usr/bin/zsh
export EDITOR=/usr/bin/nvim
export VISUAL=$EDITOR
export PATH="$PATH:$HOME/linux-configs/bin"

# make firefox touchpad scrolling pixel perfect
export MOZ_USE_XINPUT2=1

export WM_MOD=SUPER
export WM_MOD=ALT

xset m 1/1 0 # mouse accel off ; didn't really work
xset r rate 300 50 # faster auto-repeat

xrdb -merge "$HOME/.Xresources_theme_i3"

# Some environment specific settings
if [[ -z $(cat /proc/cpuinfo | grep hypervisor) ]]; then
    if [[ -f "$HOME/.Xresources_laptop" ]]; then
        xrdb -merge "$HOME/.Xresources_laptop"
    fi
elif [[ -f "$HOME/.Xresources_vm" ]]; then
    xrdb -merge "$HOME/.Xresources_vm"
fi

# prevent screen tear
xrandr --output eDP --set "TearFree" on

