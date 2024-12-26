# linux-configs
I use this repo to store my garbage.


## useful software
- unclutter - hide mouse when unneeded
- nnn - file manager
- dmenu - software launcher (customized version in `software/`)
- nvim - editor


## arch
### [vmware window resize](https://www.reddit.com/r/archlinux/comments/b0ona0/vmtools_on_arch_linux_full_screen_or_resizing/) working:
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


### archinstall
Sometimes when using an old ISO the archlinux keyring isn't
up to date so the installation process stops to a GPG signature
not being verifiable.

Install it by running `sudo pacman -Sy archlinux-keyring`

