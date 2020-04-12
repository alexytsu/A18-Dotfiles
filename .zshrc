# Set environment variables
export ZSH=~/.config/oh-my-zsh
export LC_CTYPE=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8
export EDITOR="vim"
export PROMPT_EOL_MARK=''

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

setxkbmap -option caps:escape

### ===========================================================================
### Custom aliases

#### Folder Locations
export MONO_ROOT="$HOME/Repositories"
export UNSW="$MONO_ROOT/03-University"
export WORK="$MONO_ROOT/02-Work"
export ANDROID_SDK="$HOME/Development/Android/SDK"
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:~/.local/bin:$PATH

#### Easy navigations
alias uni='$UNSW'
alias unsw='$UNSW'
alias pers='cd $MONO_ROOT/01-Personal'
alias work='cd $WORK'
alias nxtgen='cd $WORK/NXTGEN/nxtgen-software'
alias mono='cd $MONO_ROOT'
alias repos='cd $MONO_ROOT'
alias sand='cd $MONO_ROOT/01-Personal/sandbox'

### Command shortcuts
#### Remote Access
alias unswssh='ssh z5166086@login.cse.unsw.edu.au'
alias unswvpn='sudo /usr/sbin/openvpn --config $HOME/.config/OpenVPN/cse.ovpn'

#### Utilities
alias activate='source ./venv/bin/activate'
alias copy='xclip -selection c'
alias shake='adb shell input keyevent 82'
alias pyprofile='python -m cProfile -s cumtime'
alias whence='pstree -s $$'

### ===========================================================================
### Paths


### ===========================================================================
### Dotfile system

# Alias for my dotfile storage and sync
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

### ===========================================================================
# Application Specific 

### asdf-vm
. $HOME/.config/asdf/asdf.sh
. $HOME/.config/asdf/completions/asdf.bash

eval $(thefuck --alias)
