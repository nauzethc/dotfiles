#!/bin/sh
sudo pacman -Sy --needed --noconfirm \
    7zip \
    base-devel \
    bat \
    btop \
    curl \
    dnsutils \
    fastfetch \
    fzf \
    git \
    gum \
    less \
    neovim \
    net-tools \
    stow \
    util-linux \
    wget \
    zsh

# Enable TRIM
echo "Enabling TRIM timer..."
sudo systemctl enable fstrim.timer