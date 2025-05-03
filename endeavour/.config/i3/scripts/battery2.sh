#!/usr/bin/env bash

if [[ "$BLOCK_BUTTON" -eq 1 ]]; then 
    # src: i3blocks-contrib/batterybar
    readarray -t output <<< $(acpi battery)
    for line in "${output[@]}";
    do
        remaining=$(echo "$line" | egrep -o -m1 '[0-9][0-9]:[0-9][0-9]')
        if [[ -n $remaining ]]; then
            remainings+=(" ($remaining)")
        else 
            remainings+=("")
        fi
    done
    echo -n "$(~/.config/i3/scripts/ppd-status)${remainings[i]}  "
elif [[ "$BLOCK_BUTTON" -eq 3 ]]; then 
    ~/.config/i3/scripts/power-profiles
fi

~/.config/i3/scripts/battery2

