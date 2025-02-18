#!/usr/bin/bash
#echo " 󰣐 󰣐 󰣐 󰣐 󰋔 "
#echo ""
#echo "#a6e3a1"
#

if [[ "$BLOCK_BUTTON" -eq 1 ]]; then 
    # src: i3blocks-contrib/batterybar
    readarray -t output <<< $(acpi battery)
    for line in "${output[@]}";
    do
		percentages+=($(echo "$line" | grep -o -m1 '[0-9]\{1,3\}%' | tr -d '%'))
		statuses+=($(echo "$line" | egrep -o -m1 'Discharging|Charging|AC|Full|Unknown'))
        remaining=$(echo "$line" | egrep -o -m1 '[0-9][0-9]:[0-9][0-9]')
        if [[ -n $remaining ]]; then
            remainings+=(" ($remaining)")
        else 
            remainings+=("")
        fi
    done
    #echo -n "$(~/.config/i3/scripts/ppd-status)${remainings[i]}  "
	echo -n "${percentages[$i]}%${remainings[i]} "
elif [[ "$BLOCK_BUTTON" -eq 3 ]]; then 
    ~/.config/i3/scripts/power-profiles
fi

#if [ $(cat /sys/class/power_supply/ACAD/online) == 1 ];then
# Upper case is important in Charging, otherwise it matches Discharging
if [[ $(acpi battery) =~ Charging ]]; then
	~/.config/i3/scripts/miei/power_charge.sh
	exit 0 #1
fi

#level=$( upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage | grep -o "[0-9]*")
level=$(acpi battery | tr " " "\n" | grep % | grep -o "[0-9]*")

unit=20
vite=$(($level/unit))

if [ $vite == 5 ]; then
	echo ""
	echo ""
	echo "#cdd6f4"
fi

if [ $vite == 4 ]; then
	echo ""
	echo ""
	echo "#a6e3a1"
fi
if [ $vite == 3 ]; then
	echo ""
	echo ""
	echo "#a6e3a1"
fi
if [ $vite == 2 ]; then
	echo ""
	echo ""
	echo "#fab387"
fi
if [ $vite == 1 ]; then
	echo ""
	echo ""
	echo "#fab387"
fi
if [ "$level" -lt "20" ] && [ "$level" -ge "10" ]; then
	echo ""
	echo ""
	echo "#f38ba8"
fi
if [ "$level" -lt "10" ]; then
	echo "!"
	echo ""
	echo "#f38ba8"
fi
