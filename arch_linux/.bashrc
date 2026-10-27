#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


# Added by Antigravity CLI installer
export PATH="/home/asce/.local/bin:$PATH"
alias fastfetch='fastfetch --disable-linewrap true --logo "$(find ~/.config/fastfetch/logos -type f -name "*.txt" | shuf -n 1)" --logo-type file'
fastfetch
