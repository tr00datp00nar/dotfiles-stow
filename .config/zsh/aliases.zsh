alias diff="nvim -d"

# Move standard ls
alias ols="/bin/ls"

alias ls="eza"              # short, multi-line
alias ll="eza -1"           # list, 1 per line
alias la="eza -lA"          # list w/ info
alias lsd="ls --group-directories-first"
alias lld="ll --group-directories-first"
alias lad="la --group-directories-first"

# Go
alias goi="go install ."
alias got="go mod tidy"
alias ggu="go get -u -x"

# MISCELLANEOUS
alias cat="bat"
alias ssh-check='ps aux | grep ssh-agent'
alias cheat='cht.sh'
alias ignore='curl -L https://www.gitignore.io/api/vim,node,data,emacs,python,executable > .gitignore'

# NVIM
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# PS
alias psa="ps aux"
alias psg="ps aux | grep "

# TAILSCALE
alias tsup="sudo tailscale up --accept-routes -ssh"
alias tsdown="sudo tailscale down"

# SHOW HUMAN FRIENDLY NUMBERS AND COLORS
alias df="df -h"
# alias du="du -h -d 2"

# MAKE DANGEROUS COMMANDS INTERACTIVE
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# YAY
alias upgrade='yay -Syu'
