#!/bin/sh
sudo pacman -S --needed --noconfirm \
    adw-gtk-theme \
    bluetui \
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

yay -S --noconfirm \
  xdg-terminal-exec \
  wayfreeze

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

sudo systemctl enable sddm.service