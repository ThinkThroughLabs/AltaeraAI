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

  AltaeraAI - v5.0

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

echo "Installing dependencies...;

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
cd '/root'
wget https://github.com/latestissue/AltaeraAI/releases/download/ngrok-3.5.0-1-aarch64.pkg.tar.xz/ngrok-3.5.0-1-aarch64.pkg.tar.xz
pacman -U 'ngrok-3.5.0-1-aarch64.pkg.tar.xz' --noconfirm
rm -rf 'ngrok-3.5.0-1-aarch64.pkg.tar.xz'
} &> /dev/null 2>&1;

{
wget https://raw.githubusercontent.com/latestissue/AltaeraAI/main/scripts/altaera_install-architecture.sh
chmod a+x 'altaera_install-architecture.sh'
bash 'altaera_install-architecture.sh'
} &> /dev/null 2>&1;

echo "Cleaning up File System...;

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
rm -rf 'chat-with-bob.txt'
rm -rf 'altaera_install_pt-3.sh'
rm -rf 'altaera_install_pt-4.sh'
rm -rf 'altaera_install-architecture.sh'
} &> /dev/null 2>&1;

clear

wget https://raw.githubusercontent.com/latestissue/AltaeraAI/main/scripts/altaera-installation_completed.sh
chmod a+x 'altaera-installation_completed.sh'
bash 'altaera-installation_completed.sh'
