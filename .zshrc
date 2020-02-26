# Configure completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Set environment variables
export ZSH=~/.config/oh-my-zsh
export LC_CTYPE=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8
export EDITOR="vim"
export ANDROID_HOME=$HOME/Development/Android/SDK
export MONO_ROOT="$HOME/Repositories"
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/Development/Keys/Firebase/awaytravel-firebase-key-alex-dev.json"
export GOROOT=/usr/local/go
export GOPATH=$HOME/Development/golang
export CONDAPATH=$HOME/Development/Anaconda3
export PYTHONPATH=$HOME/Library/Python/3.7
export PATH=$PATH:$ANDROID_HOME.tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:~/Repositories/01-Personal/scripts/bin:$GOPATH/bin:$GOROOT/bin:$CONDAPATH/bin:$PYTHONPATH/bin
export UNSW="$MONO_ROOT/03-University"

# Make shit XDG compliant
export XDG_CONFIG_HOME="$HOME/.config"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/config"
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/.asdfrc"
export ASDF_DATA_DIR="$XDG_CONFIG_HOME/asdf"
export ASDF_DIR="$XDG_CONFIG_HOME/asdf"

# Configure oh-my-zsh
plugins=(git zsh-autosuggestions)
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
alias at='cd $HOME/Repositories/02-Work/Atlassian'
alias atlaskit='cd $HOME/Repositories/02-Work/Atlassian/atlassian-frontend'
alias repos='cd $HOME/Repositories'
alias mono='cd $HOME/Repositories'
alias sand='cd $HOME/Repositories/01-Personal/sandbox'
alias 9517='cd $UNSW/COMP9517 && activate'
alias 9444='cd $UNSW/COMP9444 && activate'
alias 9417='cd $UNSW/COMP9417 && activate'
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


# Alias for my dotfile storage and sync
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"


export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval $(thefuck --alias)

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
