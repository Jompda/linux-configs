#!/bin/bash

source $HOME/.env

# xinput list to see devices
# xinput list-props # to check if it's the correct one
xinput set-prop 8 298 -1 # mouse speed
xset m 1/1 0 # mouse accel off ; I still feel acceleration with a touchpad
xset r rate 300 50 # faster auto-repeat

xrdb -merge "$HOME/.Xresources_theme_i3"

# prevent screen tear
#xrandr --output eDP --set "TearFree" on

if [[ ! -z $(cat /proc/cpuinfo | grep "hypervisor") ]]; then
    xrdb -merge "$HOME/.Xresources_vm"
elif [[ ! -z $(cat /proc/cpuinfo | grep "AMD Ryzen 7 5800X") ]]; then
    xrdb -merge "$HOME/.Xresources_desktop"
#elif [[ ! -z $(cat /proc/cpuinfo | grep "AMD Ryzen 5 3500U") ]]; then
else
    xrdb -merge "$HOME/.Xresources_laptop"
fi
