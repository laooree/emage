#!/bin/bash

# First of all, let's make sure dnf-plugins-core
# is installed, to configure additional repos.
install_packages "dnf-plugins-core"



PACKAGES=(

  # System monitoring
  fastfetch

  # Browser
  firefox

  # Text editors
  emacs
  neovim

  # Terminal emulator
  kitty

  # Tools
  flatpak
  fzf
  ghostscript
  ripgrep
  zsh

  # Programming Languages
  julia
  nodejs
  nodejs-bash-language-server
  texlive-scheme-full  # LaTeX distribution

  # Gaming
  steam


)



install_packages "${PACKAGES[@]}"



FLATPAKS=(
  "anytype"
  "audacity"
  "calibre"
  "discord"
  "ear tag"
  "flatseal"
  "gimp"
  "hakuneko"
  "kcc"
  "onlyoffice"
  "pcsx2"
  "qbittorrent"
  "spotify"
  "telegram"
  "vlc"
  "vlc"
  "zotero"
)

for pak in "${FLATPAKS[@]}"; do
  if ! flatpak list | grep -i "$pak" &> /dev/null; then
    echo "Installing Flatpak: $pak"
    flatpak install --noninteractive "$pak"
  else
    echo "Flatpak already installed: $pak"
  fi
done
