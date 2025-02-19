# linux-configs
I use this repo to store my garbage.
NOTE: Scripts cloning repositories and applying diffs don't specify the checked out commit so such scripts will break at some point.

## [Possibly useful commands](https://linuxblog.io/90-linux-commands-frequently-used-by-linux-sysadmins/)


## useful software and commands
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
- radeontop / `sudo umr -t` - view amd gpu / vram usage
- `sudo powertop` - view battery usage
- pkill - kill process by name
- yay -Ql PKGNAME - list files owned by package

## (firefox smooth scrolling)[https://www.reddit.com/r/firefox/comments/13gdu1k/smooth_scrolling_on_firefox_is_not_really_smooth/]


# filesystems / mountpoints
- `cat /etc/fstab`
- `findmnt`

## rclone
Mount using: (localpath must be an empty folder):
```bash
rclone mount --vfs-cache-mode full remote:path localpath
```
Unmount using:
```bash
fusermount -u localpath
```


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


