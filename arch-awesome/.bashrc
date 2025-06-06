#
# ~/.bashrc
#

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

alias nt="alacritty &"

testink() {
    local DIR="$1"
    DIR=$(realpath "${DIR:=.}")
    if [[ ! -d "$DIR" ]]; then
        >&2 echo ":$0 error: Specified path doesn't exist!"
        return 1
    fi
    echo $'testink(\''"$DIR"$'\', \''"$2"$'\')' | awesome-client
}

rconf() {
    local DIR="$1"
    DIR="$HOME/.config/$DIR"
    if [[ ! -d "$DIR" ]]; then
        >&2 echo ":$0 error: Specified path doesn't exist!"
        return 1
    fi
    ranger "$DIR"
}


PS1='[\u@\h \W]\$ '

fortune -o
