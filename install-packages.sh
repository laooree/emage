#!/bin/bash



############################
##### Helper functions #####
############################



# Function to check if a package is installed
is_package_installed() {
  rpm -q "$1" &> /dev/null
}



# Function to install packages if not already installed
install_packages() {
  
  local packages=("$@")
  local to_install=()

  # Put packages not installed in to_install list
  for pkg in "${packages[@]}"; do
    if ! is_package_installed "$pkg"; then
      to_install+=("$pkg")
    fi
  done
  
  # if to_install is not empty, install packages on the list
  if [ ${#to_install[@]} -ne 0 ]; then
    sudo dnf install -y "${to_install[@]}"
  else
    echo "All packages are installed."
  fi
} 



############################
##### Install packages #####
############################



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

  # Python
  python3-lsp-server     # language server
  python3-yapf           # formatter
  # linters
  python3-pyflakes       # errors
  python3-pycodestyles   # styiling
  python3-mccabe         # complexity
  python3-flake8         # wrapper of previous

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
