#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source $HOME/.env
source $HOME/.bash_aliases

PS1='[\u@\h \W]\$ '
