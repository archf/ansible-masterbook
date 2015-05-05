#!/bin/sh

# clone the repo
git clone git@bitbucket.org:archambf/dotfiles.git ~/dotfiles

# generate the symlinks with the install script
source ~/dotfiles/install.sh
