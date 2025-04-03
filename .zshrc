# ZSH config

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# For gpg
GPG_TTY=$(tty)
export GPG_TTY

# Aliases
alias cat="bat"
alias notes="nvim $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/obsidian/"

# oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git z web-search zsh-syntax-highlighting zsh-autosuggestions)

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /opt/homebrew/share/zsh-vi-mode/zsh-vi-mode.zsh
source $ZSH/oh-my-zsh.sh
export PATH="$PATH:$(python3 -m site --user-base)/bin"

[ -f "/Users/phk/.ghcup/env" ] && . "/Users/phk/.ghcup/env" # ghcup-env
