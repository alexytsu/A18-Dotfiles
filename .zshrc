# Set environment variables
export ZSH=~/.config/oh-my-zsh
export LC_CTYPE=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8
export EDITOR="vim"
export PROMPT_EOL_MARK=''
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0 #fixes minimising CS:GO

# Make shit XDG compliant
export XDG_CONFIG_HOME="$HOME/.config"

# Configure oh-my-zsh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
ZSH_THEME=bira
source $ZSH/oh-my-zsh.sh

# Hardware specific
setxkbmap -option caps:escape

### ===========================================================================
### Paths

#### Folder Locations
export DEVELOP="$HOME/Develop"
export MONO_ROOT="$DEVELOP/Repositories"
export UNSW="$MONO_ROOT/03-University"
export WORK="$MONO_ROOT/02-Work"

### ===========================================================================
### Custom aliases

#### Easy navigations
alias uni='$UNSW'
alias unsw='$UNSW'
alias pers='cd $MONO_ROOT/01-Personal'
alias work='cd $WORK'
alias helix='cd $WORK/Helix'
alias repos='cd $MONO_ROOT'
alias sand='cd $MONO_ROOT/01-Personal/sandbox'
alias one='cd $WORK/Helix/onederful/onederful'

### Command shortcuts

#### Utilities
alias activate='source ./venv/bin/activate'
alias pyprofile='python -m cProfile -s cumtime'
alias whence='pstree -s $$'
alias zshload='source $HOME/.zshrc'
alias update='apt update'
alias upgrade='sudo apt upgrade'

### ===========================================================================
### Paths

# Configure paths
export GOPATH="$MONO_ROOT/01-Personal"
export DENO_INSTALL="$DEVELOP/.deno"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/config"
export ANDROID_SDK_ROOT="/home/alex/Android/Sdk"
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

export PATH="$DENO_INSTALL/bin:$DEVELOP/bin:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/emulator:$PATH"

### ===========================================================================
### Dotfile system

# Alias for my dotfile storage and sync
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

### ===========================================================================
# Application Specific 
#
# node version manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

## thefuck
eval $(thefuck --alias)
