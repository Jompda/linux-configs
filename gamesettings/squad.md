# DLSS, smooth motion, reflex
src: https://docs.nvidia.com/datacenter/tesla/driver-installation-guide/gaming.html
## Reflex
src: https://github.com/Korthos-Software/low_latency_layer/
(required installation)
LOW_LATENCY_LAYER=1 LOW_LATENCY_LAYER_REFLEX=1

# To fix "gamemodeauto: dlopen failed - libgamemode.so: cannot open shared object file: No such file or directory" found in proton log
src: https://github.com/Arcturis144/Nobara-Steam-NV-Gamemode-fix
LD_PRELOAD="$LD_PRELOAD:$HOME/.steam-runtime-libs/gamemode/Lib/libgamemode.so.0:$HOME/.steam-runtime-libs/gamemode/Lib64/libgamemode.so.0" LD_LIBRARY_PATH="$HOME/.steam-runtime-libs/gamemode/Lib64:$HOME/.steam-runtime-libs/gamemode/Lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}" LD_BIND_NOW=1 gamemoderun mangohud %command%

# Proton wayland driver
WAYLANDDRV_PRIMARY_MONITOR="DP-3" PROTON_USE_WAYLAND=1 


# Gamescope
gamescope --mangoapp -f --backend sdl -- gamemoderun %command%
gamescope --mangoapp --backend sdl -f -w 1920 -h 1080 -W 1920 -H 1080 -r 144.0 --force-grab-cursor -- gamemoderun %command%

LD_BIND_NOW=1 LOW_LATENCY_LAYER=1 gamemoderun mangohud %command%


# Final
WAYLANDDRV_PRIMARY_MONITOR="DP-3" PROTON_USE_WAYLAND=1 PROTON_NO_WRITE_WATCH=1 PROTON_DLSS_UPGRADE=1 LD_PRELOAD="$LD_PRELOAD:$HOME/.steam-runtime-libs/gamemode/Lib/libgamemode.so.0:$HOME/.steam-runtime-libs/gamemode/Lib64/libgamemode.so.0" LD_LIBRARY_PATH="$HOME/.steam-runtime-libs/gamemode/Lib64:$HOME/.steam-runtime-libs/gamemode/Lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}" LD_BIND_NOW=1 gamemoderun mangohud %command%

