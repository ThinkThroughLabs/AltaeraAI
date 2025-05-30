#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - AI Models Management"
TITLE="AI Models Settings"
MENU="What would you like to do?:"

OPTIONS=(1 "[...] Go Back"
         2 "List Installed Models"
         3 "Download Models"
         4 "Remove Models"
	 5 "Custom AI Model [...]"
	 6 "AI Model Backup/Restore [/sdcard/Download]")


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
            exit 0
	    ;;
        2)
            clear
            proot-distro login altaera -- ./altaera-model_list.sh
	    exit
            ;;
        3)
            clear
            './AltaeraAI/altaera-model.sh'
            exit
            ;;
        4)
            clear
            './AltaeraAI/altaera-model_remove.sh'
            exit
            ;;
        5)
            clear
	    './AltaeraAI/altaera-custom_ai_model.sh'
            exit
	    ;;
	6)
            clear
            './AltaeraAI/altaera-model_backup-restore.sh'
            exit
	    ;;
esac
