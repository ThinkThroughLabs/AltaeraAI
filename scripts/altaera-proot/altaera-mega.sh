#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - MEGA Backup/Restore"
TITLE="Stories' Settings"
MENU="What would you like to do?:"

OPTIONS=(1 "[...] Go Back"
         2 "Back-up stories"
         3 "Restore stories")


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
            bash 'altaera-mega_login.sh'
            mkdir 'AltaeraAI-stories'
            bash 'altaera-mega_backup.sh'
            exit
            ;;
        3)
            bash 'altaera-mega_login.sh'
            mkdir 'AltaeraAI-stories'
            bash 'altaera-mega_restore.sh'
            exit
            ;;
esac
