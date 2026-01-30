#!/bin/sh
sudo pacman -Sy --needed --noconfirm \
  flatpak \
  gamescope \
  lib32-mangohud \
  mangohud \
  sddm \
  steam

# Install ProtonPlus to enable Proton with HDR support
# flatpak install --noninteractive com.vysp3r.ProtonPlus

sudo systemctl enable sddm.service