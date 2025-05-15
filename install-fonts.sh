#!/bin/bash


# Helper function to install nerd font
install_nerd_font() {
  font_name=$1
  url="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/${font_name}.zip"
  target_dir="$HOME/.local/share/fonts/$font_name"

  if ! ls ~/.local/share/fonts | grep -i "$font_name"; then
    echo "➕ Installing font: $font_name"

    mkdir -p "$target_dir"
    curl -L -o "$target_dir/$font_name.zip" "$url"
    unzip -o "$target_dir/$font_name.zip" -d "$target_dir"
    rm "$target_dir/$font_name.zip"

    fc-cache -f "$target_dir"
    echo "Font '$font_name' installed."
  else
    echo "Font '$font_name' already installed."
  fi
}



#########################
##### Install Fonts #####
#########################

# Install Nerd Fonts

NERD_FONTS=(
  "FiraMono"
  "FiraCode"
  "Arimo"
  "ComicShannsMono"
)

for font in "${NERD_FONTS[@]}"; do
  install_nerd_font "$font"
done



# Install packaged fonts

install_packages "mozilla-fira-sans-fonts"
