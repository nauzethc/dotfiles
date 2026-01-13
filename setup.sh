#!/bin/bash

# Install packages
source ./install/base.sh
source ./install/development.sh
source ./install/aur.sh
source ./install/hyprland.sh
source ./install/extra.sh
source ./install/themes.sh

# Hardware packages and tweaks
source ./install/hardware/bluetooth.sh
source ./install/hardware/input.sh

# Get Omarchy to access scripts and helpers
OMARCHY_REPO="${OMARCHY_REPO:-basecamp/omarchy}"
echo -e "\nCloning Omarchy from: https://github.com/${OMARCHY_REPO}.git"
rm -rf ~/.local/share/omarchy/
git clone "https://github.com/${OMARCHY_REPO}.git" ~/.local/share/omarchy >/dev/null

# Create intermediary directories to keep them with stow
mkdir -p ~/.local/bin
mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/backgrounds

# Replace old zshrc config
mv ~/.zshrc ~/.zshrc.original

# Deploy dotfiles with stow
stow -t $HOME .

# Set dark theme on GTK apps
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# Set MIME types

# Use Chromium as the default browser
xdg-settings set default-web-browser chromium.desktop
xdg-mime default chromium.desktop x-scheme-handler/http
xdg-mime default chromium.desktop x-scheme-handler/https

# Open all images with gThumb
xdg-mime default org.gnome.gThumb.desktop image/png
xdg-mime default org.gnome.gThumb.desktop image/jpeg
xdg-mime default org.gnome.gThumb.desktop image/gif
xdg-mime default org.gnome.gThumb.desktop image/webp
xdg-mime default org.gnome.gThumb.desktop image/bmp
xdg-mime default org.gnome.gThumb.desktop image/tiff

# Open video files with mpv
xdg-mime default mpv.desktop video/mp4
xdg-mime default mpv.desktop video/x-msvideo
xdg-mime default mpv.desktop video/x-matroska
xdg-mime default mpv.desktop video/x-flv
xdg-mime default mpv.desktop video/x-ms-wmv
xdg-mime default mpv.desktop video/mpeg
xdg-mime default mpv.desktop video/ogg
xdg-mime default mpv.desktop video/webm
xdg-mime default mpv.desktop video/quicktime
xdg-mime default mpv.desktop video/3gpp
xdg-mime default mpv.desktop video/3gpp2
xdg-mime default mpv.desktop video/x-ms-asf
xdg-mime default mpv.desktop video/x-ogm+ogg
xdg-mime default mpv.desktop video/x-theora+ogg
xdg-mime default mpv.desktop application/ogg

# Open PDFs with the Document Viewer
xdg-mime default org.gnome.Evince.desktop application/pdf

echo "Done! Reboot your system to complete installation."