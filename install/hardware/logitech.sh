#!/bin/bash

# Prevent Logi receivers wake up from suspend
echo "Disabling Logi Receiver inmmediate wake up from suspend..."

sudo tee /etc/udev/rules.d/logitech.rules <<'EOF'
ACTION=="add", SUBSYSTEM=="usb", DRIVERS=="usb", ATTRS{idVendor}=="046d", ATTRS{idProduct}=="c548", ATTR{power/wakeup}="disabled"
ACTION=="add", SUBSYSTEM=="usb", DRIVERS=="usb", ATTRS{idVendor}=="046d", ATTRS{idProduct}=="c52b", ATTR{power/wakeup}="disabled"
EOF
