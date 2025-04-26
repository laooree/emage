#!/bin/bash

# Print initial logo
source logo.sh
clear
print_initial_logo



# Source utility functions
source utils.sh



# Install packages
echo -e "\nInstalling packages..."
source install-packages.sh
sleep 3



# Print ending screen
print_ending_message
