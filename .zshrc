# Set environment variables
export ZSH=~/.oh-my-zsh
export LC_CTYPE=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8
export EDITOR="vim"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME.tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator

# Configure oh-my-zsh
plugins=(sudo, git)
ZSH_THEME=robbyrussell
source $ZSH/oh-my-zsh.sh

# Alias for my dotfile storage and sync
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# A better capslock key
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'
alias qwfp="setxkbmap au"
alias qwer="setxkbmap us -variant colemak"

# Refresh colours etc
xrdb -merge ~/.Xresources
alias ptest='pytest --disable-pytest-warnings'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias unsw='ssh z5166086@login.cse.unsw.edu.au'
alias uni='cd ~/Repositories/02-University'
alias personal='cd ~/Repositories/01-Personal'
alias comp1531='cd ~/Repositories/02-University/COMP1531'
alias activate='source ./venv/bin/activate'

