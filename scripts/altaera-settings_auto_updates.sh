#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=7
BACKTITLE="AltaeraAI - Settings"
TITLE="Automatic Update & File Integrity checks"
MENU="Would you like to turn ON, or turn OFF automatic update & file integrity checks?"

OPTIONS=(1 "[...] Go Back"
         2 "Turn ON"
         3 "Turn OFF")
         

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            exit
	    ;;
        2)
            echo "Turning ON automatic update & file integrity checks ..."
            {
            clear
            rm -rf './AltaeraAI/altaera_auto-check.sh'
            cd './AltaeraAI'
	    rm -rf 'altaera-update.sh'
	    wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-update.sh
     	    chmod a+x 'altaera-update.sh'
            wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_auto-check.sh
            chmod a+x 'altaera_auto-check.sh'
            } &> /dev/null 2>&1;
	    clear
            echo "Turning ON automatic update & file integrity checks ✔"
	    sleep .5
            ;;
        3)
            echo "Turning OFF automatic update & file integrity checks ..."
            {
            clear
            rm -rf './AltaeraAI/altaera_auto-check.sh'
            cd './AltaeraAI'
	    rm -rf 'altaera-update.sh'
	    wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-update_no-check.sh -O 'altaera-update.sh'
     	    chmod a+x 'altaera-update.sh'
            wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_auto-check_empty.sh -O 'altaera_auto-check.sh'
            chmod a+x 'altaera_auto-check.sh'
            } &> /dev/null 2>&1;
	    clear
            echo "Turning OFF automatic update & file integrity checks ✔"
	    sleep .5
            ;;
esac
