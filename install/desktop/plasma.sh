#!/bin/sh
sudo pacman -Sy --needed --noconfirm \
  ark \
  bluedevil \
  chromium \
  dolphin \
  dragon \
  elisa \
  ffmpegthumbs \
  ghostty \
  gwenview \
  konsole \
  noto-fonts \
  plasma-browser-integration \
  plasma-desktop \
  plasma-nm \
  okular \
  sddm \
  vlc \

sudo systemctl enable sddm.service