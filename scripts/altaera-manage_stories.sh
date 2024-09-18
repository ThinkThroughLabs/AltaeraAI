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
            {
            pkg in megacmd
            proot-distro login altaera -- ./altaera-mega.sh
            } &> /dev/null 2>&1;
            exit
            ;;
esac
