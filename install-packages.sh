#!/bin/bash

# # First of all, let's install dnf-plugins-core
# # This allows to easily add repositories
# install_packages "dnf-plugins-core"


# # Then let's add extra repositories
# if is_installed "dnf-plugins-core"; then

#   # Add brave browser repo
#   sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

# fi

PACKAGES=(

  # System monitoring
  fastfetch

  

  # Text editors
  emacs
  neovim



  # Tools
  dnf-plugins-core
  ripgrep
  fzf
  zsh



  # Languages
  clojure
  julia
  nodejs
  nodejs-bash-language-server
  texlive-scheme-full  # LaTeX distribution



  # Gaming
  steam

)


install_packages "${PACKAGES[@]}"
