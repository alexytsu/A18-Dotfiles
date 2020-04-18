# Set environment variables
export ZSH=~/.config/oh-my-zsh
export LC_CTYPE=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8
export EDITOR="vim"
export PROMPT_EOL_MARK=''
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0 #fixes minimising CS:GO

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

# Hardware specific
setxkbmap -option caps:escape

### ===========================================================================
### Paths

### Installed locations
export ANDROID_SDK="$HOME/Development/Android/SDK"
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:~/.local/bin:$PATH
export PATH="$(yarn global bin):$PATH"

#### Folder Locations
export MONO_ROOT="$HOME/Repositories"
export UNSW="$MONO_ROOT/03-University"
export WORK="$MONO_ROOT/02-Work"

### ===========================================================================
### Custom aliases

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

#### Utilities
alias activate='source ./venv/bin/activate'
alias pyprofile='python -m cProfile -s cumtime'
<<<<<<< HEAD
alias whence='pstree -s $$'
=======
alias gog='g++ *.cpp && ./a.out'

### ===========================================================================
### Paths

# Configure paths
export GOPATH="$MONO_ROOT/01-Personal"
>>>>>>> ee574cc... fix minimisation problems

### ===========================================================================
### Dotfile system

# Alias for my dotfile storage and sync
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

### ===========================================================================
# Application Specific 

### asdf-vm
<<<<<<< Updated upstream
. $HOME/.config/asdf/asdf.sh
. $HOME/.config/asdf/completions/asdf.bash
<<<<<<< HEAD

## thefuck
eval $(thefuck --alias)
=======
=======
. /opt/asdf-vm/asdf.sh
eval $(thefuck --alias)

# The next line updates PATH for Netlify's Git Credential Helper.
if [ -f '/home/alexytsu/.netlify/helper/path.zsh.inc' ]; then source '/home/alexytsu/.netlify/helper/path.zsh.inc'; fi
>>>>>>> Stashed changes
>>>>>>> ee574cc... fix minimisation problems
