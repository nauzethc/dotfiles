#!/bin/sh

# Install new Xbox driver compatible with Xbox Elite Controller 2
yay -Sy --needed --noconfirm xpadneo-dkms

# Give this user privileged input access for dictation tools + xbox controllers to work
sudo usermod -aG input ${USER}