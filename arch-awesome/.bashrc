#
# ~/.bashrc
#

export VISUAL="/usr/bin/nvim"
export EDITOR="$VISUAL"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Fast config editing
alias editzsh="$EDITOR ~/.zshrc"
alias editbash="$EDITOR ~/.bashrc"
alias editalacritty="$EDITOR ~/.config/alacritty/alacritty.toml"
alias editawesome="$EDITOR ~/.config/awesome/rc.lua"
alias editnvim="$EDITOR ~/.config/nvim/init.lua"

PS1='[\u@\h \W]\$ '
