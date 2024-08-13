#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - Backend"
TITLE="Choosing Backend"
MENU="Choose a Backend to proceed:"

OPTIONS=(1 "[...] Go Back"
         2 "KoboldCpp - [Default]"
         3 "ollama [don't use, not yet implemented!]")


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
            if [ -d /root/kcpp-ae ]
            then
            bash 'altaera.sh'
            else
            bash 'altaera_corrupted-files.sh'
            fi
	    ;;
	    
        2)
            './altaera-ollama.sh"
	    ;;
      
esac
