#!/bin/sh
sudo pacman -Sy --needed --noconfirm \
    adw-gtk-theme \
    dunst \
    evince \
    ghostty \
    hypridle \
    hyprland \
    hyprlock \
    hyprpaper \
    hyprpicker \
    hyprpolkitagent \
    hyprshot \
    hyprsunset \
    hyprwire \
    gthumb \
    imv \
    mpv \
    nautilus \
    noto-fonts \
    pipewire \
    pipewire-alsa \
    pipewire-pulse \
    qt6-svg \
    qt6-declarative \
    qt5-quickcontrols2 \
    rofi \
    satty \
    sddm \
    slurp \
    uwsm \
    waybar \
    wayland \
    wireplumber \
    wiremix \
    wl-clipboard \
    xdg-desktop-portal-gtk \
    xdg-desktop-portal-hyprland \
    xdg-user-dirs \
    yazi

sudo systemctl enable sddm.service