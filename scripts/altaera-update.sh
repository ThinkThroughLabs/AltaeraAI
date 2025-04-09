#!/bin/bash

HEIGHT=20
WIDTH=100
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - Update"
TITLE="Choosing updating method"
MENU="Would you like to update with the pre-packaged KoboldCpp [Faster], or by building your own? [Slower]"

OPTIONS=(1 "Update with pre-packaged KoboldCpp [Faster]"
         2 "Update with building your own KoboldCpp [Slower]"
         3 "Update with building your own Experimental KoboldCpp [Slower]"
         4 "Update shell files only")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear

# Check function for dynamically updating check marks
check_status() {
    echo -n "$1"
    tput el  # Clear to the end of the line
    sleep 1  # Simulate task time
    
    # Use tput to set the color to green
    tput setaf 2  # Set text color to green (color 2 is green)
    echo -n " [ ✔ ]"
    tput sgr0  # Reset the color back to default
    echo
}

case $CHOICE in
        1)
            clear
            echo "
████████████████████████
██                    ██
██        ██████████  ██
██       ██ █         ██
██      ██  █         ██
██     ██   █         ██
██     █    ████████  ██
██    ██    █         ██
██   ████████         ██
██  ██      █         ██
██  █       ████████  ██
██                    ██
████████████████████████

  AltaeraAI - v6.0.0

    by ThinkThrough
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

            # Updating steps
            check_status "Initializing update [ ... ] "
            {
                rm -rf 'altaera-update_content.sh'
                wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-update_content-fast.sh -O 'altaera-update_content.sh'
                chmod a+x 'altaera-update_content.sh'
            } &> /dev/null 2>&1
            check_status "Downloading update content [ ... ] "
            bash 'altaera-update_content.sh'
            check_status "Finishing up [ ... ] "
            wait 1
            clear
            bash 'AltaeraAI/altaera-updated_successfully.sh'
            ;;

        2)
            clear
            echo "
████████████████████████
██                    ██
██        ██████████  ██
██       ██ █         ██
██      ██  █         ██
██     ██   █         ██
██     █    ████████  ██
██    ██    █         ██
██   ████████         ██
██  ██      █         ██
██  █       ████████  ██
██                    ██
████████████████████████

  AltaeraAI - v6.0.0

    by ThinkThrough
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

            # Updating steps
            check_status "Initializing update [ ... ] "
            {
                rm -rf 'altaera-update_content.sh'
                wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-update_content-slow.sh -O 'altaera-update_content.sh'
                chmod a+x 'altaera-update_content.sh'
            } &> /dev/null 2>&1
            check_status "Downloading update content [ ... ] "
            bash 'altaera-update_content.sh'
            check_status "Finishing up [ ... ] "
            wait 1
            clear
            bash 'AltaeraAI/altaera-updated_successfully.sh'
            ;;

        3)
            clear
            echo "
████████████████████████
██                    ██
██        ██████████  ██
██       ██ █         ██
██      ██  █         ██
██     ██   █         ██
██     █    ████████  ██
██    ██    █         ██
██   ████████         ██
██  ██      █         ██
██  █       ████████  ██
██                    ██
████████████████████████

  AltaeraAI - v6.0.0

    by ThinkThrough
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

            # Updating steps
            check_status "Initializing update [ ... ] "
            {
                rm -rf 'altaera-update_content.sh'
                wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/refs/heads/main/scripts/altaera-update_content-slow_experimental.sh -O 'altaera-update_content.sh'
                chmod a+x 'altaera-update_content.sh'
            } &> /dev/null 2>&1
            check_status "Downloading update content [ ... ] "
            bash 'altaera-update_content.sh'
            check_status "Finishing up [ ... ] "
            wait 1
            clear
            bash 'AltaeraAI/altaera-updated_successfully.sh'
            ;;

        4)
            clear
            echo "
████████████████████████
██                    ██
██        ██████████  ██
██       ██ █         ██
██      ██  █         ██
██     ██   █         ██
██     █    ████████  ██
██    ██    █         ██
██   ████████         ██
██  ██      █         ██
██  █       ████████  ██
██                    ██
████████████████████████

  AltaeraAI - v6.0.0

    by ThinkThrough
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

            # Updating steps
            check_status "Initializing update [ ... ] "
            {
                rm -rf 'altaera-update_content.sh'
                wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-update_content-scripts.sh -O 'altaera-update_content.sh'
                chmod a+x 'altaera-update_content.sh'
            } &> /dev/null 2>&1
            check_status "Downloading update content [ ... ] "
            bash 'altaera-update_content.sh'
            check_status "Finishing up [ ... ] "
            wait 1
            clear
            bash 'AltaeraAI/altaera-updated_successfully.sh'
            ;;
esac
