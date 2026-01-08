#!/bin/bash

# Install packages
# source ./install/base.sh
# source ./install/development.sh
# source ./install/hyprland.sh
# source ./install/extra.sh

# Bluetooth stack
# source ./install/hardware/bluetooth.sh

# Get Omarchy to access scripts and helpers
OMARCHY_REPO="${OMARCHY_REPO:-basecamp/omarchy}"
echo -e "\nCloning Omarchy from: https://github.com/${OMARCHY_REPO}.git"
rm -rf ~/.local/share/omarchy/
git clone "https://github.com/${OMARCHY_REPO}.git" ~/.local/share/omarchy >/dev/null

# Setup ZSH
cp .zshrc ~/.zshrc