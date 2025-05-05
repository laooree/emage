#!/bin/bash


# Function to check if a package is installed
is_installed() {
  rpm -q "$1" &> /dev/null
}


# Function to install packages if not already installed
install_packages() {
  
  local packages=("$@")
  local to_install=()

  # Put packages not installed in to_install list
  for pkg in "${packages[@]}"; do
    if ! is_installed "$pkg"; then
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
