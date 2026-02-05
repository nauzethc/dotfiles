#!/bin/sh
sudo pacman -Sy --needed --noconfirm \
  flatpak \
  gamescope \
  lib32-mangohud \
  mangohud \
  sddm \
  steam

# Install Wayland's HDR compatible Proton and Vulkan layer
yay -S --noconfirm \
  gamescope-session-git \
  moondeckbuddy-appimage \
  sunshine \
  vk-hdr-layer-kwin6-git

# Install ProtonPlus to install ProtonGE or CachyOS versions
flatpak install --noninteractive com.vysp3r.ProtonPlus

# Add Steam session to Gamescope
sudo mkdir -p /usr/share/gamescope-session-plus/sessions.d
sudo tee /usr/share/gamescope-session-plus/sessions.d/steam <<'EOF'
CLIENTCMD="steam -steamdeck -steamos3 -pipewire-dmabuf"
EOF

# Add SteamOS with GameScope session on login managers
echo "Enable SteamOS session on login manager..."
sudo mkdir -p /usr/share/wayland-sessions
sudo tee /usr/share/wayland-sessions/steam.desktop <<'EOF'
[Desktop Entry]
Encoding=UTF-8
Name=Steam (GameScope)
Comment=SteamOS session using GameScope compositor
Exec=gamescope-session-plus steam
Type=Application
DesktopNames=steamos
EOF

sudo systemctl enable sddm.service