#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.bash_aliases
source ~/.env

PS1='[\u@\h \W]\$ '

