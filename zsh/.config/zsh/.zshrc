source ~/repos/github.com/catppuccin/zsh-syntax-highlighting/themes/catppuccin_frappe-zsh-syntax-highlighting.zsh

source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/functions.zsh
source ~/.config/zsh/path.zsh
source ~/.config/zsh/zplug.zsh

eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/omp.toml)"
eval "$(zoxide init zsh --cmd cd)"
eval "$(thefuck --alias fuck)"

bindkey -v
bindkey '^r' fzf_history_search
bindkey -s '^t' 'tmux new -s main^M'
bindkey -s '^h' 'cd^M'
bindkey -s '^f' 'f v^M'
bindkey -s '^g' 'f cd^M'
bindkey -s '^k' 'f kill^M'

# vim: set filetype=zsh #
