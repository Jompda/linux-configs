#!/usr/bin/bash
#echo " 󰣐 󰣐 󰣐 󰣐 󰋔 "
#echo ""
#echo "#a6e3a1"
#  󰁹󱐋

#level=$( upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage | grep -o "[0-9]*")
level=$(acpi battery | tr " " "\n" | grep % | grep -o "[0-9]*")

unit=20
vite=$(($level/unit))

if [ $vite == 5 ]; then
	echo "󱐋 "
	echo ""
	echo "#7aadff"
fi
if [ "$level" -gt "90" ]; then
	echo "󱐋 "
	echo ""
	echo "#7aadff"
elif [ $vite == 4 ]; then
	echo "󱐋 "
	echo ""
	echo "#7aadff"
fi
if [ $vite == 3 ]; then
	echo "󱐋 "
	echo ""
	echo "#7aadff"
fi
if [ $vite == 2 ]; then
	echo "󱐋 "
	echo ""
	echo "#7aadff"
fi
if [ $vite == 1 ]; then
	echo "󱐋 "
	echo ""
	echo "#7aadff"
fi
if [ "$level" -lt "10" ]; then
	echo "󱐋 !"
	echo ""
	echo "#7aadff"
fi
