#!/bin/bash

# Setup ZSH
cp .zshrc ~/.zshrc

# Copy configuration and wallpapers
cp -r ./.config/* ~/.config/
cp -r ./backgrounds/ ~/.config/

# Copy scripts
cp ./bin/* ~/.local/bin/

# Copy application launchers
mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/applications/icons
cp -r applications/* ~/.local/share/applications/

# Set XDG settings
xdg-settings set default-web-browser chromium.desktop