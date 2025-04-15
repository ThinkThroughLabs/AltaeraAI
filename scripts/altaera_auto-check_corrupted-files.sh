#!/bin/bash

dialog --title "Corrupted Files" \
        --backtitle "AltaeraAI - Launch" \
        --yesno "Some of the essential files are missing. Would you like to install them now?" 7 60

response=$?
case $response in

        0)      
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

  AltaeraAI - v6.0.2

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

            echo "Initializing fix ...

            " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            {
        rm -rf 'altaera_auto-check_fix.sh'
        wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_auto-check_fix.sh
        chmod a+x 'altaera_auto-check_fix.sh'
            } &> /dev/null 2>&1;
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

  AltaeraAI - v6.0.2

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

             echo "Initializing fix ✔

            " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            
            echo "Fixing AltaeraAI essential files ...

            " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            {
        bash 'altaera_auto-check_fix.sh'
        rm -rf 'altaera_auto-check_fix.sh'
            } &> /dev/null 2>&1;
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

  AltaeraAI - v6.0.2

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

            echo "Initializing fix ✔

            " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            
            echo "Fixing AltaeraAI essential files ✔

            " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            
sleep .5

          ;;
        1) 
        exit
        ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
        255)
        exit
        ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
esac
