#!/bin/bash

alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -la'
alias grep='grep --color=auto'

alias gdiff='git diff'
alias gstat='git status'
#alias glog exists by zsh I think

alias ra='ranger'
alias zt='zathura'

# Fast config editing
alias editbash="$EDITOR ~/.bashrc"
alias editalias="$EDITOR ~/.bash_aliases"
alias editzsh="$EDITOR ~/.zshrc"
alias editnvim="$EDITOR ~/.config/nvim/init.lua"
alias editi3="ranger ~/.config/i3"
alias editpicom="$EDITOR ~/.config/picom/picom.conf"
alias editrofi="ranger ~/.config/rofi"
alias editrofitheme="ranger ~/.local/share/rofi/themes"

new () {
    nohup "$@" >&/dev/null &
}
alias nt="new xfce4-terminal"
alias newzt="new zathura"

pdf() {
    pdftotext "$1" - | fmt -w ${2-"160"} | less
}

