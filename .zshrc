# Set environment variables
export ZSH=~/.oh-my-zsh
export EDITOR="nvim"

# Configure oh-my-zsh
plugins=(sudo)
ZSH_THEME=robbyrussell
source $ZSH/oh-my-zsh.sh

# Set custom aliases
alias UNSW="ssh z5166086@login.cse.unsw.edu.au"
alias vim="nvim"

#Alias for my dotfile storage and sync
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
