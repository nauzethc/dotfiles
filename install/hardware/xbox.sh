#!/bin/sh

# Install new Xbox driver compatible with Xbox Elite Controller 2
sudo pacman -S --noconfirm --needed linux-headers
yay -S --noconfirm xpadneo-dkms

# Prevent xpad/xpadneo driver conflict
echo blacklist xpad | sudo tee /etc/modprobe.d/blacklist-xpad.conf >/dev/null
echo hid_xpadneo | sudo tee /etc/modules-load.d/xpadneo.conf >/dev/null

# Give user access to game controllers
sudo usermod -a -G input $USER