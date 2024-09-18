cat altaera-mega_login.sh
!/bin/bash

# Redirecting dialog box output to a temporary stream
exec 3>&1  # Save the place that stdout (1) points to
email=$(dialog --title "Input Required" --inputbox "Enter e-mail:" 10 30 2>&1 >/dev/tty)
exec 3>&-  # Close the temporary stream
exec 3>&1  # Save the place that stdout (1) points to
password=$(dialog --title "Input Required" --inputbox "Enter password:" 10 30 2>&1 >/dev/tty)
exec 3>&-  # Close the temporary stream

            mega-login $email $password
            
echo "Logging into MEGA...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
