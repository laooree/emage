#!/bin/bash

# Print initial logo
source logo.sh
clear
print_initial_logo



# Install packages
echo -e "\nInstalling packages..."
source install-packages.sh



# Install fonts
echo -e "\nInstalling fonts..."
source install-fonts.sh



# Print ending screen
sleep 3
print_ending_message
