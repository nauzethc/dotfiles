#!/bin/bash

sudo pacman -S --needed --noconfirm \
  git \
  base-devel

# Get yay package manager helper (AUR)
CURRENT=$(pwd)
CACHE_PATH=$HOME/.cache/yay
mkdir -p $CACHE_PATH
git clone https://aur.archlinux.org/yay.git $CACHE_PATH/yay
cd $CACHE_PATH/yay

# Build package and install
makepkg -si --noconfirm

# Return to previous path
cd $CURRENT

# Install other deps
yay -S --needed --noconfirm \
  xdg-terminal-exec \
  wayfreeze