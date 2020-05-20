# Set environment variables
export ZSH=~/.config/oh-my-zsh
export LC_CTYPE=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8
export EDITOR="vim"
export PROMPT_EOL_MARK=''
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0 #fixes minimising CS:GO

# Hardware configs
setxkbmap -option caps:escape

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
### Paths

### Installed locations
export PATH=~/.local/bin:$PATH

#### Folder Locations
export MONO_ROOT="$HOME/Develop/Repositories"
export UNSW="$MONO_ROOT/03-University"
export WORK="$MONO_ROOT/02-Work"

#### Configure ROS
source /opt/ros/kinetic/setup.zsh
export CATKIN_WS="$MONO_ROOT/02-Work/NXTGEN"
export NXTGEN_ROOT="$CATKIN_WS/src/nxtgen-software"
source $CATKIN_WS/devel/setup.zsh
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$CATKIN_WS

### ===========================================================================
### Custom aliases

#### Easy navigations
alias uni="$UNSW"
alias unsw="$UNSW"
alias pers="cd $MONO_ROOT/01-Personal"
alias work="cd $WORK"
alias nxtgen="cd $NXTGEN_ROOT"
alias mono="cd $MONO_ROOT"
alias repos="cd $MONO_ROOT"
alias sand="cd $MONO_ROOT/01-Personal/sandbox"

### Command shortcuts
#### Remote Access
alias unswssh="ssh z5166086@login.cse.unsw.edu.au"

#### Utilities
alias activate="source ./venv/bin/activate"
alias pyprofile="python -m cProfile -s cumtime"
alias whence="pstree -s $$"
alias gog="g++ *.cpp && ./a.out"
alias update="sudo apt update"
alias upgradable="sudo apt list --upgradable"
alias upgrade="sudo apt upgrade"

### ===========================================================================
### Dotfile system

# Alias for my dotfile storage and sync
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

### ===========================================================================
# Application Specific 

### asdf-vm
. $HOME/.config/asdf/asdf.sh
. $HOME/.config/asdf/completions/asdf.bash

## thefuck
eval $(thefuck --alias)
