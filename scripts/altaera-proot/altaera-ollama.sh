#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v5.7.1 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AltaeraAI - ollama"
MENU="Choose what to do:"

OPTIONS=(1 "[...] Go Back"
         2 "Initialize ollama [do this first!]"
         3 "Start ollama [broken!]"
         4 "Start ollama [its official models])


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
            ./altaera.sh
            ;;
        2)
        clear
        echo "Initializing ollama... Now press 'Ctrl+T', type in 'ae' and start ollama 

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            {
            ollama serve
            } &> /dev/null 2>&1;
            
            ;;
        3)
        bash 'altaera-ollama_start.sh'

;;

4)
bash 'altaera-ollama_official_models.sh'

;;

esac