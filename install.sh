#!/bin/bash

# Install git
sudo pacman -Sy --noconfirm --needed git

# Copy repo on your $HOME
git clone https://github.com/nauzethc/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Install
source setup.sh