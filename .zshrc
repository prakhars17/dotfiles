# -----------------------------
# Starship (better prompt)
# -----------------------------
eval "$(starship init zsh)"

export BAT_THEME="Catppuccin-mocha"

# -----------------------------
# History Configuration
# -----------------------------
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_SPACE

# -----------------------------
# Completion
# -----------------------------
autoload -Uz compinit
compinit -C

# -----------------------------
# Keybindings
# -----------------------------
bindkey -e
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# -----------------------------
# zoxide (better cd)
# -----------------------------
eval "$(zoxide init zsh)"
alias cd="z"

# -----------------------------
# Better defaults
# -----------------------------
alias ls='eza --icons'
alias ll='eza -la --icons'
alias cat='bat'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias calude='claude'

# -----------------------------
# Autosuggestions config
# -----------------------------
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#6c7086'

# -----------------------------
# User local binaries
# -----------------------------
export PATH="$HOME/.local/bin:$PATH"

# Apple Silicon path
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# -----------------------------
# Syntax Highlighting (MUST BE LAST)
# Apple Silicon path
# -----------------------------
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh