#!/bin/sh
sudo pacman -Sy --needed --noconfirm \
    code \
    docker \
    nvm \
    ttf-cascadia-code-nerd \
    ttf-fira-code \
    ttf-hack-nerd \
    ttf-jetbrains-mono-nerd

# Add user to Docker group and enable service at boot
sudo gpasswd -a $USER docker
sudo systemctl enable docker.service

# VSCode extensions
code --install-extension catppuccin.catppuccin-vsc
code --install-extension catppuccin.catppuccin-vsc-icons

# Node Version Manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Python UV
curl -fsSL https://astral.sh/uv/install.sh | sh