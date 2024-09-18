#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - Stories Management"
TITLE="Stories' Settings"
MENU="What would you like to do?:"

OPTIONS=(1 "[...] Go Back"
         2 "MEGA")


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
            clear
            echo "Installing mega-cmd [if it isn't installed]...
            
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            {
            pkg in megacmd -y
            } &> /dev/null 2>&1;
            clear
            echo "Logging into PRoot Distro...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);   
            proot-distro login altaera -- ./altaera-mega.sh
            exit
            ;;
esac
