# Dotfiles stored in a bare Git repo

## Installation on a new machine
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare https://github.com/alexytsu/dotfiles.git $HOME/.cfg
config checkout
```
