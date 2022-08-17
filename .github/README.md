# Dotfiles

This repository serves as a central collection of tools and scripts that are shared across machines for my programming.

## Setup

The following will checkout this repo as a bare repository, setup the necessary files, and then run the install script

```sh
git clone git@github.com:aghassi/dotfiles.git --bare ~/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
~/setup.sh
```

## Development

### Brewfile

To update the `.Brewfile`, run `brew bundle dump --file=~/.Brewfile --force`
