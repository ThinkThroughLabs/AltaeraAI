#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - Backend"
TITLE="Choosing Backend"
MENU="Choose a Backend to proceed:"

OPTIONS=(1 "[...] Go Back"
         2 "KoboldCpp - [Default]"
         3 "ollama [...]")


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
            bash 'AltaeraAI/altaera.sh'
	    ;;
     
        2)
            if [ -d /root/kcpp-ae ]
            then
            bash 'altaera.sh'
            else
            bash 'altaera_corrupted-files.sh'
            fi
	    ;;
	    
        3)
            if [ -d /root/.ollama ]
            then
            bash 'altaera-ollama.sh'
	    else
	    bash 'altaera-ollama_install.sh'
	    fi
	    ;;
      
esac
