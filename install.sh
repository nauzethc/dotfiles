#!/bin/bash

# Install packages
source ./install/base.sh
source ./install/development.sh
source ./install/aur.sh
source ./install/hyprland.sh
source ./install/extra.sh

# Hardware packages and tweaks
source ./install/hardware/bluetooth.sh
source ./install/hardware/input.sh

# Get Omarchy to access scripts and helpers
OMARCHY_REPO="${OMARCHY_REPO:-basecamp/omarchy}"
echo -e "\nCloning Omarchy from: https://github.com/${OMARCHY_REPO}.git"
rm -rf ~/.local/share/omarchy/
git clone "https://github.com/${OMARCHY_REPO}.git" ~/.local/share/omarchy >/dev/null

# Setup ZSH
cp .zshrc ~/.zshrc