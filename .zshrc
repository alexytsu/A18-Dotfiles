# Set environment variables
export ZSH=~/.oh-my-zsh
export EDITOR="nvim"

# Configure oh-my-zsh
plugins=(sudo)
ZSH_THEME=robbyrussell
source $ZSH/oh-my-zsh.sh

# Set custom aliases
alias unsw="ssh z5166086@login.cse.unsw.edu.au"
alias vim="nvim"
alias comp="cd ~/Repositories/02-University/A18-COMP1521"
alias labs="cd ~/Repositories/02-University/A18-COMP1521/020-Labs"
alias ass="cd ~/Repositories/02-University/A18-COMP1521/030-Assignments"

# Alias for my dotfile storage and sync
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# A better capslock key
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'
alias qwfp="setxkbmap au"
alias qwer="setxkbmap us -variant colemak"

# Refresh colours etc
xrdb -merge ~/.Xresources
