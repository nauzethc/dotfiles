#!/bin/sh
sudo pacman -Sy --needed --noconfirm \
  ark \
  bluedevil \
  breeze \
  breeze-gtk \
  chromium \
  dolphin \
  dragon \
  elisa \
  ffmpegthumbs \
  ghostty \
  gwenview \
  konsole \
  kscreen \
  noto-fonts \
  plasma-browser-integration \
  plasma-desktop \
  plasma-nm \
  powerdevil \
  okular \
  sddm \
  sddm-kcm \
  spectable \
  vlc \

sudo systemctl enable sddm.service