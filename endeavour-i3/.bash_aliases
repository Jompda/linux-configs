#!/bin/bash

alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -la'
alias grep='grep --color=auto'

# Fast config editing
alias editbash="$EDITOR ~/.bashrc"
alias editalias="$EDITOR ~/.bash_aliases"
alias editzsh="$EDITOR ~/.zshrc"
alias editnvim="$EDITOR ~/.config/nvim/init.lua"
alias editi3="ranger ~/.config/i3"
alias editrofi="ranger ~/.config/rofi"
alias editrofitheme="ranger ~/.local/share/rofi/themes"

alias nt="xfce4-terminal &"

gitpush() {
    git status
    if $(prompt-yn "Do you wish to stage all, commit and push?"); then
        git stage --all
        git commit -m "$*"
        git push
    else
        echo "Canceling push."
    fi
}

