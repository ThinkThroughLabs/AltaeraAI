#!/bin/bash

dialog --title "Corrupted Files" \
        --backtitle "AltaeraAI - Launch" \
        --yesno "Some of the essential files are missing. Would you like to install them now?" 7 60

response=$?
case $response in

        0)      
        rm -rf 'altaera_auto-check_fix.sh'
        wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_auto-check_fix.sh
        bash 'altaera_auto-check_fix.sh'
        rm -rf 'altaera_auto-check_fix.sh'
          ;;
        1) 
        exit
        ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
        255)
        exit
        ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
esac
