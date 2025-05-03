#!/bin/bash

source $HOME/.env

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

