# Dotfiles stored in a bare Git repo

## Installation on a new machine

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare git@github.com:alexytsu/dotfiles.git $HOME/.cfg
config checkout
```

## Some tools and dependencies that this repo uses

[oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) for a prettier terminal and some
extra functionality

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv ~/.oh-my-zsh ~/.config/oh-my-zsh # move to a custom location outside of my home directory
```

[asdf-vm](https://asdf-vm.com/#/core-manage-asdf-vm) for management of various
development environments (most notably as a substitute for nvm)

```bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
mv ~/.asdf ~/.config/asdf
```

[thefuck](https://github.com/nvbn/thefuck) literally so I can `git push` then
`fuck` to do the `git push -u origin branch` thing that I forget everytime
