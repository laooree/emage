#!/bin/bash

# First time printing the logo, add suspance
# by using sleep
print_initial_logo() {
  cat <<"EOF"
     


      ██████████                                            
     ░░███░░░░░█                                               
      ░███  █ ░  █████████████    ██████    ███████  ██████    This is not a
      ░██████   ░░███░░███░░███  ░░░░░███  ███░░███ ███░░███   setup process.
      ░███░░█    ░███ ░███ ░███   ███████ ░███ ░███░███████                  
      ░███ ░   █ ░███ ░███ ░███  ███░░███ ░███ ░███░███░░░     It's a
      ██████████ █████░███ █████░░████████░░███████░░██████    summoning.
     ░░░░░░░░░░ ░░░░░ ░░░ ░░░░░  ░░░░░░░░  ░░░░░███ ░░░░░░   
                                           ███ ░███          
                                          ░░██████             by laooree
                                           ░░░░░░           
     

EOF

  sleep 3
  echo "The arcane process has started. No turning back."
  sleep 3
  echo "Summoning the Emage..."
  sleep 3

}


print_ending_message() {
  echo -e "\nThe Emage has been summoned."
  sleep 1
  echo "You now hold the power of CLI."
  sleep 1
  echo "Wield it wisely."
  sleep 3
  echo -e "\nYou may want to reboot your system to unleash its magic."
}
