# Activating Starship Prompt
eval "$(starship init zsh)"

# Autosuggestions and Syntax Highlighting
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Fastfetch on startup

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cat='bat --style=plain' # if bat is installed
alias matrix='cmatrix -C red'
export PATH="/home/asce/.local/bin:$PATH"
alias fastfetch='fastfetch --disable-linewrap true --logo "$(find ~/.config/fastfetch/logos -type f -name "*.txt" | shuf -n 1)" --logo-type file'
fastfetch
