#!/bin/sh
sudo pacman -Sy --noconfirm \
  bluez \
  bluetui

# Enable service
echo "Enabling Bluetooth service..."
sudo systemctl enable bluetooth.service

# Disable USB autosuspend to prevent peripheral disconnection issues
echo "Disabling USB autosupend..."
if [[ ! -f /etc/modprobe.d/disable-usb-autosuspend.conf ]]; then
  echo "options usbcore autosuspend=-1" | sudo tee /etc/modprobe.d/disable-usb-autosuspend.conf
fi