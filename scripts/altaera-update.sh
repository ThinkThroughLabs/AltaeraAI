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

# Spinner function (fixed and tested)
spin() {
    local -r pid="$1"
    local delay=0.1
    local chars='|/-\\'
    tput civis
    while kill -0 "$pid" 2>/dev/null; do
        for ((i=0; i<${#chars}; i++)); do
            printf " [%c]  " "${chars:i:1}"
            sleep $delay
            printf "\b\b\b\b\b\b"
        done
    done
    tput cnorm
}

# Optional check_status for fake steps (short tasks)
check_status() {
    echo -n "$1" | pv -qL 50
    tput el
    (sleep 1) &
    local pid=$!
    spin "$pid"
    wait "$pid"
    tput setaf 2
    echo -n " [ ✔ ]"
    tput sgr0
    echo
}

case $CHOICE in
    1|2|3|4)
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
            messages=("that KobbleTiny is the world's sweetest child?" "that KobbleTiny is concedo's designed mind?")
            index=$(( RANDOM % ${#messages[@]} ))
            message=${messages[$index]}
            echo $message | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
        }

        random_message

        echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

        echo -n "Initializing update " | pv -qL 50
        case $CHOICE in
            1)
                {
                    rm -rf 'altaera-update_content.sh'
                    wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-update_content-fast.sh -O 'altaera-update_content.sh'
                    chmod a+x 'altaera-update_content.sh'
                } &> /dev/null &
                ;;
            2)
                {
                    rm -rf 'altaera-update_content.sh'
                    wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-update_content-slow.sh -O 'altaera-update_content.sh'
                    chmod a+x 'altaera-update_content.sh'
                } &> /dev/null &
                ;;
            3)
                {
                    rm -rf 'altaera-update_content.sh'
                    wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/refs/heads/main/scripts/altaera-update_content-slow_experimental.sh -O 'altaera-update_content.sh'
                    chmod a+x 'altaera-update_content.sh'
                } &> /dev/null &
                ;;
            4)
                {
                    rm -rf 'altaera-update_content.sh'
                    wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-update_content-scripts.sh -O 'altaera-update_content.sh'
                    chmod a+x 'altaera-update_content.sh'
                } &> /dev/null &
                ;;
        esac
        spin $!
        tput setaf 2; echo -n " [ ✔ ]"; tput sgr0; echo

        check_status "Executing update method "
        bash 'altaera-update_content.sh'
        spin $!
        tput setaf 2; echo -n " [ ✔ ]"; tput sgr0; echo

        check_status "Finishing up "

        wait 1
        clear
        bash 'AltaeraAI/altaera-updated_successfully.sh'
        ;;
esac
