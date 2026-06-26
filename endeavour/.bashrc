#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.bash_aliases
source ~/.env

PS1='[\u@\h \W]\$ '


# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/jonir/.lmstudio/bin"
# End of LM Studio CLI section

