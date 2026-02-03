#!/bin/bash

# Install Realtek 8125 driver to enable Wake-on-LAN
yay -Sy --needed --noconfirm r8125-dkms

# Prevent kernel driver is loaded and enable WOL on device
echo "Enabling Wake-on-LAN..."

NET_DEV="`nmcli con | grep ethernet | cut -d " " -f 1 | head`"

if [[ -n $NET_DEV ]]; then
  nmcli con modify $NET_DEV 802-3-ethernet.auto-negotiate yes
  nmcli con modify $NET_DEV 802-3-ethernet.wake-on-lan magic
fi

sudo tee /etc/modprobe.d/realtek-wake-on-lan.conf <<'EOF'
blacklist r8169
options r8125 disable_wol_support=0 s5wol=1 apsm=0
EOF