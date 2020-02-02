# Set environment variables
export ZSH=~/.config/oh-my-zsh
export LC_CTYPE=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8
export EDITOR="vim"

# Make shit XDG compliant
export XDG_CONFIG_HOME="$HOME/.config"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/config"
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/.asdfrc"
export ASDF_DATA_DIR="$XDG_CONFIG_HOME/asdf"
export ASDF_DIR="$XDG_CONFIG_HOME/asdf"

# Configure oh-my-zsh
plugins=(git)
ZSH_THEME=robbyrussell
source $ZSH/oh-my-zsh.sh


### ===========================================================================
### Custom aliases

#### Folder Locations
export MONO_ROOT="$HOME/Repositories"
export UNSW="$MONO_ROOT/03-University"
export ANDROID_SDK="$HOME/Development/Android/SDK"
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH

#### Easy navigations
alias uni='$UNSW'
alias unsw='$UNSW'
alias pers='cd $MONO_ROOT/01-Personal'
alias work='cd $MONO_ROOT/02-Work'
alias prax='cd $MONO_ROOT/02-Work/Praxis'
alias hx='cd $MONO_ROOT/02-Work/Helix'
alias wheel='cd $MONO_ROOT/02-Work/Praxis/wheel-easy'
alias jcms='cd $MONO_ROOT/02-Work/Helix/jcms'
alias away='cd $MONO_ROOT/02-Work/Helix/jcms/awaytravel/planner'
alias repos='cd $MONO_ROOT'
alias mono='cd $MONO_ROOT'
alias sand='cd $MONO_ROOT/01-Personal/sandbox'
alias 9517='cd $UNSW/COMP9517'
alias 9444='cd $UNSW/COMP9444'
alias 9417='cd $UNSW/COMP9417'
alias 4920='cd $UNSW/COMP4920'

### Command shortcuts
#### Remote Access
alias unswssh='ssh z5166086@login.cse.unsw.edu.au'
alias unswvpn='sudo /usr/sbin/openvpn --config $HOME/.config/OpenVPN/cse.ovpn'
alias swvpn='sudo /usr/sbin/openvpn --config $HOME/.config/OpenVPN/alex-su-softwire.ovpn'

#### Utilities
alias vim="nvim"
alias activate='source ./venv/bin/activate'
alias copy='xclip -selection c'
alias shake='adb shell input keyevent 82'
alias pyprofile='python -m cProfile -s cumtime'

### ===========================================================================
### Paths

# Configure paths
export GOPATH="$MONO_ROOT/01-Personal"

### ===========================================================================
### Dotfile system

# Alias for my dotfile storage and sync
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

### ===========================================================================
# Application Specific 

### asdf-vm
. $HOME/.config/asdf/asdf.sh
. $HOME/.config/asdf/completions/asdf.bash
