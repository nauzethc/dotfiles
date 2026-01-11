#!/bin/bash

# Install git
sudo pacman -Sy --noconfirm --needed git

# Copy repo on your $HOME
git clone git@github.com/nauzethc/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Install
source setup.sh