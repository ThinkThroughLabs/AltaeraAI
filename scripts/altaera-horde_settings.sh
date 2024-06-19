#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=7
BACKTITLE="AltaeraAI"
TITLE="Horde - Settings"
MENU="What would you like to change?"

OPTIONS=(1 "[...] Go Back"
         2 "Horde Model Name [...]"
         3 "Horde Worker Name [...]"
         4 "Horde Key [...]")
         

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
            './AltaeraAI/altaera-horde_settings_hordemodelname.sh'
            './AltaeraAI/altaera-horde_settings.sh'
            ;;
        3)
            clear
            './AltaeraAI/altaera-horde_settings_hordeworkername.sh'
            './AltaeraAI/altaera-horde_settings.sh'
            ;;
        4)
            clear
            './AltaeraAI/altaera-horde_settings_hordekey.sh'
            './AltaeraAI/altaera-horde_settings.sh'
            ;;
esac
