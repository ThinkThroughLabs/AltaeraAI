#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=7
BACKTITLE="AltaeraAI - Settings"
TITLE="Dialog Theme [MENU]"
MENU="Would you like to turn ON, or turn OFF the customized AltaeraAI dialog theme [MENU]?"

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
            {
rm '/data/data/com.termux/files/home/.dialogrc'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/refs/heads/main/termux/dialogrc -O '.dialogrc' -P '/data/data/com.termux/files/home'
proot-distro login altaera -- ./dialog_theme-on.sh &
exit
} &> /dev/null 2>&1;
            ;;
        3)
            {
rm '/data/data/com.termux/files/home/.dialogrc'
cp '/data/data/com.termux/files/home/AltaeraAI-tmp/termux-default/dialogrc' '/data/data/com.termux/files/home/.dialogrc'
proot-distro login altaera -- ./dialog_theme-off.sh &
exit
} &> /dev/null 2>&1;
            ;;
esac
