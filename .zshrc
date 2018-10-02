# Set environment variables
export ZSH=~/.oh-my-zsh
export EDITOR="vim"

# Configure oh-my-zsh
plugins=(sudo, git)
ZSH_THEME=robbyrussell
source $ZSH/oh-my-zsh.sh

alias ptest='pytest --disable-pytest-warnings'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias unsw='ssh z5166086@login.cse.unsw.edu.au'
alias uni='cd ~/Repositories/02-University'
alias personal='cd ~/Repositories/01-Personal'
alias comp1531='cd ~/Repositories/02-University/COMP1531'
alias activate='source ./venv/bin/activate'
alias UNSW="ssh z5166086@login.cse.unsw.edu.au"

