# linux-configs
I use this repo to store my garbage.


## useful software
- unclutter - hide mouse when unneeded
- nnn / ranger - file manager
- dmenu - software launcher (customized version in `software/`)
- nvim - editor
- thefuck - shell command helper


# arch

## ssh

### ssh-agent setup
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

### ssh-keygen
[github keygen](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
ssh-add <filename>
```


## [vmware window resize](https://www.reddit.com/r/archlinux/comments/b0ona0/vmtools_on_arch_linux_full_screen_or_resizing/):
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


## archinstall
Sometimes when using an old ISO the archlinux keyring isn't
up to date so the installation process stops to a GPG signature
not being verifiable.

Install it by running `sudo pacman -Sy archlinux-keyring`

