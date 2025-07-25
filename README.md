# linux-configs
I use this repo to store my garbage.
NOTE: Scripts cloning repositories and applying diffs don't specify the checked out commit so such scripts will break at some point.
NOTE: checkout regolith for a complete i3 desktop excperience
TODO: --confs option to software/*/install scripts
TODO: update i3 rofi configs to inclide -x11 due to using rofi-wayland

## useful software and commands
[Possibly useful commands](https://linuxblog.io/90-linux-commands-frequently-used-by-linux-sysadmins/)
- unclutter - hide mouse when unneeded
- nnn / ranger - file manager
- dmenu / rofi - software launcher (customized version in `software/`)
- nvim - editor
- thefuck - shell command helper
- picom/xcompmgr - compositor
- meld - diff viewer
- libreoffice
- zoom/teams
- zathura,zotero - pdf reading/management
- spotube - music player
- imhex - hex viewer/editor
- wireshark - packet inspection
- xdg_menu - list installed applications by categories
- debtap - convert .deb packages for arch
- blueman - GUI bluetooth manager
- tldr - man-like help page?
- `tmux list-keys` - show the commands attached to the binds
- `mirage -Rf DIR >&/dev/null` - image viewer command
- `feh -rZ. DIR` - image viewer command
- mpv - can also be used image viewing with binds: next > and previous <

### maintenance
- ncdu / - check disk usage from the file tree

### wayland
https://www.reddit.com/r/swaywm/comments/17hjx01/wayland_native_file_manager_for_sway_any/
- xeyes - check if program is wayland native
- hyprctl clients - hyprland window information

### monitoring / processes / services
- radeontop / `sudo umr -t` - view amd gpu / vram usage
- `sudo powertop` - view battery usage
- `sudo bandwhich` - view bandwidth usage by process
- pkill - kill process by name
- systemctl --user ACTION --now SERVICE.service - enable,disable,restart service
- systemctl status - show system status
- glances

### packages
More commands: https://wiki.archlinux.org/title/Pacman/Rosetta
- yay -Ql PKGNAME - list files owned by package
- yay -Gp PKGNAME - show pkgbuild of a package. Might download it to the CWD.
- pacman -Rns PKGNAME - remove pkg along with config files and dependencies
- makepkg -s PKGBUILD - get source packages and build dependencies
- reflector - update mirrors (doesn't update the file for some reason, file is below)
- /etc/pacman.d/mirrorlist

### archives
- ar - some archiving utility
- tar -cf DIRECTORY.tar DIRECTORY - create a tar file
- tar xvf ARCHIVE.tar - open a tar file
- 7z a -p -mhe=on ARCHIVE.7z ARCHIVE - encrypted 7zip archive
- 7z x ARCHIVE - decrypt

### pdf
- pdftotext PDFFILE - | fmt -w 160 | less - view pdf from terminal

### filesystems, mountpoints and rclone
- cat /etc/fstab - info on filesystems
- findmnt - for finding filesystems and mounted thingies
- lsblk - list block devices
- `sudo mount /dev/DEVICE MOUNTPOINT` - mount device (usually /dev/sdb1 /mnt)
- `sudo umount MOUNTPOINT` - unmount device
- rclone mount --vfs-cache-mode full remote:PATH LOCALPATH - mount remote to an empty directory
- fusermount -u LOCALPATH - unmount remote

### devices
- libinput list-devices
- `xinput [list-props|set-prop]` - permanent properties in /usr/share/X11/xorg.conf.d/
- `xinput test-xi2 --root` - test input events
- xev - test input events
- `xrandr --prop` - show available monitor properties
- `xrandr --output OUTPUT --set "TearFree" on` - prevent screen tearing

### reverse-engineering
- `objdump -d -Mamd FILE` - disassemble binary file
- strings - show printable characters in file
- `hexdump -C FILE` - inspect file
- frida/ida - disassemblers


# vim
## compiling in vim
- :make %< - if an error occurs it also moves the cursor to the error


# ssh

## ssh-agent setup
```bash
sudo pacman -Sy openssh
eval "$(ssh-agent -s)"
```
[stackoverflow git ssh](https://stackoverflow.com/questions/23546865/how-to-configure-command-line-git-to-use-ssh-key)
`~/.ssh/config`:
```
Host github.com
  User git
  IdentityFile ~/.ssh/<thesshkeyfile>
```

## ssh-keygen
[github keygen](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
ssh-add <filename>
```

## git migrate repo from https to ssh
[git migrate](https://stackoverflow.com/questions/57230972/how-to-migrate-from-https-to-ssh-github)
```bash
git remote set-url origin SSH_URL
git remote -v
```


# [vmware window resize](https://www.reddit.com/r/archlinux/comments/b0ona0/vmtools_on_arch_linux_full_screen_or_resizing/):
```bash
sudo pacman -S open-vm-tools
sudo pacman -Su xf86-input-vmmouse xf86-video-vmware mesa gtk2 gtkmm
```
and add `needs_root_rights=yes` to `/etc/X11/Xwrapper.config`
and finally
```bash
sudo systemctl enable vmtoolsd
sudo systemctl start vmtoolsd
```


# archinstall
Sometimes when using an old ISO the archlinux keyring isn't
up to date so the installation process stops to a GPG signature
not being verifiable.

Install it by running `sudo pacman -Sy archlinux-keyring`


# systsmd-boot
## Skipping boot menu
- t - increase timeout
- T - decrease timeout


