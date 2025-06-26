# TODO
- syncfiles not syncing .Xresources_theme_i3
- adjust touchpad scroll sensitivity
- write a script that tells the current amount of birch pollen in the air
- remove sudo from syncfiles in extract mode
- xdg-open stalling on vm
- sync wallpapers dir
- vpn config for desktop

## desktop
- NVIDIA
  - primary screen 
  - monitoring
- gamescope
  - vulkan and sdl errors
- make sure this is in /etc/lightdm/Xsession:
```# Run user xsession shell script
script="$HOME/.xsession"
if [ -x "$script" -a ! -d "$script" ]; then
    echo "Loading xsession script $script"
    . "$script"
fi```

## laptop
- steam factorio gamemode


## i3
- .xsession doesn't get executed
- picom:
  * fix nm-applet menu corner shadows
  * fix remontoire animations
- i3 config reorder bindings so remontoire shows them in a nicer order
- Copy all GTK files (including nwg-look) so the settings actually get synced like the font and theme preference
- figure out what is causing the hitching
  * really visible when using picom or could it be that picom is the cause?

## hyprland
- hyprlang update is broken, downgraded
- cliphist not working properly
- sometimes hyprutils get fucked and prevents hyprland from loading some .so file. fix is to rebuild using yay
- setup hyprlock gpu accelerated
- waybar
  - arch update
- wlogout
  - icon colors
- gtk theme to dark
- hyprland updates break plugins, consider disabling hyprland updates
- tofi prompt shifts options to the right

