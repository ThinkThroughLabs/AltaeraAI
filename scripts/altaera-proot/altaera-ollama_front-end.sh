#!/bin/bash

HEIGHT=15
WIDTH=80
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v5.7.6 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AltaeraAI - ollama Official Models: Front-end"
MENU="What Front-end interface would you like to use?:"

OPTIONS=(1 "[...] Go Back"
         2 "Maid [...]"
         3 "CLI")


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
            bash '/root/altaera-ollama.sh'
            ;;
        2)
            bash '/root/altaera-ollama_maid.sh'
            ;;
        3)
            :
            ;;

esac
