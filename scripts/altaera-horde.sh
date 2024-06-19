#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - AI Models Downloading"
TITLE="AI Model Selection"
MENU="Choose a model to download:"

OPTIONS=(1 "[...] Go Back"
         2 "Use Horde as an end-user (KoboldLite) [URL]"
         3 "Start Horde Session"
         4 "Horde Settings [...]")


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
            termux-open-url 'https://lite.koboldai.net'
            ;;
        3)
            clear
            proot-distro login altaera -- ./horde.sh
            ;;
        4)
            bash '/data/data/com.termux/files/home/AltaeraAI/altaera-horde_settings.sh'
            ;;
      
esac
