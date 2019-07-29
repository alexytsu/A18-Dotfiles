# Set environment variables
export ZSH=~/.oh-my-zsh
export LC_CTYPE=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8
export EDITOR="vim"
export ANDROID_HOME=$HOME/Development/Android/SDK
export PATH=$PATH:$ANDROID_HOME.tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:~/Repositories/01-Personal/scripts/bin
export MONO_ROOT="$HOME/Repositories"
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/Development/Keys/Firebase/awaytravel-firebase-key-alex-dev.json"

# Make shit XDG compliant
export XDG_CONFIG_HOME="$HOME/.config"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/config"

# Configure oh-my-zsh
plugins=(git)
ZSH_THEME=robbyrussell
source $ZSH/oh-my-zsh.sh

# Easy navigations
alias uni='cd $HOME/Repositories/03-University'
alias unsw='cd $HOME/Repositories/03-University'
alias pers='cd $HOME/Repositories/01-Personal'
alias work='cd $HOME/Repositories/02-Work'
alias prax='cd $HOME/Repositories/02-Work/Praxis'
alias hx='cd $HOME/Repositories/02-Work/Helix'
alias wheel='cd $HOME/Repositories/02-Work/Praxis/wheel-easy'
alias jcms='cd $HOME/Repositories/02-Work/Helix/jcms'
alias away='cd $HOME/Repositories/02-Work/Helix/jcms/awaytravel/planner'
alias repos='cd $HOME/Repositories'
alias mono='cd $HOME/Repositories'
alias sand='cd $HOME/Repositories/01-Personal/sandbox'

# Command shortcuts
alias activate='source ./venv/bin/activate'
alias unswssh='ssh z5166086@login.cse.unsw.edu.au'
alias unswvpn='sudo /usr/sbin/openvpn --config $HOME/.config/OpenVPN/cse.ovpn'
alias swvpn='sudo /usr/sbin/openvpn --config $HOME/.config/OpenVPN/alex-su-softwire.ovpn'

alias copy='xclip -selection c'

alias update='sudo apt update'
alias upgradable='apt list --upgradable'
alias upgrade='sudo apt upgrade'

alias shake='adb shell input keyevent 82'
alias android='emulator @Nexus5X &'
alias pyprofile='python -m cProfile -s cumtime'
alias installed='apt list --installed'

# Alias for my dotfile storage and sync
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# Refresh colours etc
xrdb -merge ~/.Xresources

eval $(thefuck --alias)
