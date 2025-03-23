# TODO
- picom:
  - fix nm-applet menu corner shadows
  - sometimes firefox corners are not rounded when it fills half the screen
- configure multimonitor workspaces
  - check config and scripts from https://i3wm.org/docs/user-contributed/lzap-config.html
- greeter should support brightness adjusting via function keys
- dunstify segfaults when -r/--replace is used so brightness notifications stopped working
  - turns out it was libnotify update which caused the segfault.. downgraded it
- Copy all GTK files so the settings actually get synced like the font and theme preference
