# Set environment variables
export ZSH=~/.oh-my-zsh
export LC_CTYPE=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8
export EDITOR="vim"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME.tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:~/Repositories/01-Personal/scripts/bin

# Configure oh-my-zsh
plugins=(git)
ZSH_THEME=robbyrussell
source $ZSH/oh-my-zsh.sh

# Easy navigations
alias uni='cd ~/Repositories/03-University'
alias unsw='cd ~/Repositories/03-University'
alias pers='cd ~/Repositories/01-Personal'
alias work='cd ~/Repositories/02-Work'
alias prax='cd ~/Repositories/02-Work/Praxis'
alias hx='cd ~/Repositories/02-Work/Helix'
alias wheel='cd ~/Repositories/02-Work/Praxis/wheel-easy'
alias jcms='cd ~/Repositories/02-Work/Helix/jcms'
alias away='cd ~/Repositories/02-Work/Helix/jcms/awaytravel/planner'
alias repos='cd ~/Repositories'

# Command shortcuts
alias activate='source ./venv/bin/activate'
alias unswssh='ssh z5166086@login.cse.unsw.edu.au'
alias unswvpn='sudo /usr/sbin/openvpn --config $HOME/.config/OpenVPN/cse.ovpn'

alias copy='xclip -selection c'

alias update='sudo apt update'
alias upgradable='apt list --upgradable'
alias upgrade='sudo apt upgrade'

alias shake='adb shell input keyevent 82'
alias android='emulator @Nexus_5X_API_28_x86'
alias pyprofile='python3 -m cProfile -s cumtime'

# Alias for my dotfile storage and sync
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# Refresh colours etc
xrdb -merge ~/.Xresources

