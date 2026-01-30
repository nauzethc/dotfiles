#!/bin/sh
sudo pacman -Sy --needed --noconfirm \
  ark \
  bluedevil \
  breeze \
  breeze-gtk \
  chromium \
  discover \
  dolphin \
  dragon \
  elisa \
  flatpak \
  ffmpegthumbs \
  ghostty \
  gwenview \
  kdenetwork-filesharing \
  konsole \
  kscreen \
  noto-fonts \
  plasma-browser-integration \
  plasma-desktop \
  plasma-nm \
  plasma-pa \
  powerdevil \
  okular \
  sddm \
  sddm-kcm \
  spectacle \
  vlc \

sudo systemctl enable sddm.service