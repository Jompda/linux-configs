#!/usr/bin/bash
#echo " 󰣐 󰣐 󰣐 󰣐 󰋔 "
#echo ""
#echo "#a6e3a1"
#  󰁹󱐋

#level=$( upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage | grep -o "[0-9]*")
level=$(acpi battery | tr " " "\n" | grep % | grep -o "[0-9]*")

if [[ -z "$level" ]]; then
	exit
fi

echo -n "󰁹"
if [ "$level" -gt "90" ]; then
	echo "󱐋 "
	echo ""
	echo "#7aadff"
elif [ "$level" -gt "75" ]; then
	echo "󱐋 "
	echo ""
	echo "#7aadff"
elif [ "$level" -gt "50" ]; then
	echo "󱐋 "
	echo ""
	echo "#7aadff"
elif [ "$level" -gt "25" ]; then
	echo "󱐋 "
	echo ""
	echo "#7aadff"
else
	echo "󱐋 !"
	echo ""
	echo "#7aadff"
fi
