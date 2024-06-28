#!/bin/bash

            clear
            echo "

        ██████████
       ██ █
      ██  █
     ██   █
     █    ████████
    ██    █
   ████████
  ██      █
  █       ████████

  AltaeraAI - v5.2.2

    by ThinkThroughLabs


  "

  echo "Did you know...

  " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

  	function random_message() {
    # Array of random messages
    messages=("that KobbleTiny is the world's sweetest child?" "that KobbleTiny is concedo's designed mind?")

    # Generate a random index
    index=$(( RANDOM % ${#messages[@]} ))

    # Get the random message
    message=${messages[$index]}

    # Print the random message
    echo $message | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
}

# Call the function
random_message

echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing initial files ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing core files ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing dependencies...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
cd '/root'
wget https://github.com/ThinkThroughLabs/AltaeraAI/releases/download/ngrok-3.5.0-1-aarch64.pkg.tar.xz/ngrok-3.5.0-1-aarch64.pkg.tar.xz
pacman -U 'ngrok-3.5.0-1-aarch64.pkg.tar.xz' --noconfirm
rm -rf 'ngrok-3.5.0-1-aarch64.pkg.tar.xz'
} &> /dev/null 2>&1;

{
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install-architecture.sh
chmod a+x 'altaera_install-architecture.sh'
bash 'altaera_install-architecture.sh'
} &> /dev/null 2>&1;

clear

echo "Cleaning up File System...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
rm -rf 'chat-with-bob.txt'
rm -rf 'altaera_install_pt-3.sh'
rm -rf 'altaera_install_pt-4.sh'
rm -rf 'altaera_install-architecture.sh'
} &> /dev/null 2>&1;

clear

if [ -d /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera ]

then

echo "**********INSTALLATION COMPLETED**********
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
echo "
      !!!  - Please, pull down the notification bar, expand 'Termux' and press 'Exit'  !!!
      !!!  - Or, press 'CTRL+D' twice.                                                !!!

      --- Then, open Termux and:
      
- To start, please type in 'ae'."
echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

exec <&-

else

dialog --title "AltaeraAI - PRoot Distro installation failure" --msgbox 'There were problems installing the PRoot Distro environment. This can happen, for instance, when some of the mirror servers are down, therefore unable to retrieve some necessary files. In the next step, you will be asked whether to retry PRoot Distro environment installation, or to cancel.' 40 80

#!/bin/bash

dialog --title "PRoot Distro installation failure" \
        --backtitle "AltaeraAI - Installation" \
        --yesno "Would you like to retry the PRoot Distro environment installation?" 7 60

response=$?
case $response in

        0)      
        clear
        1) exit
        255) exit
esac

echo "The PRoot Distro environment failed to install. Retrying in 5 seconds...

[to cancel, press Ctrl+C]
"
echo "10..."
sleep 1
echo "9..."
sleep 1
echo "8..."
sleep 1
echo "7..."
sleep 1
echo "6..."
sleep 1
echo "5..."
sleep 1

clear

rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-3.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-4.sh'
rm -rf '/data/data/com.termux/files/home/altaera-install_method.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
clear
proot-distro install altaera
