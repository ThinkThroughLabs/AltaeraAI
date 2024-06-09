#!/bin/bash

dialog --title "Corrupted Files" \
        --backtitle "AltaeraAI - Launch" \
        --yesno "The KoboldCpp directory seems to be missing, therefore couldn't launch. Install it now?" 7 60

response=$?
case $response in

        0)      
        bash 'altaera-fix.sh'
          ;;
        1) 
        exit
        ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
        255)
        exit
        ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
esac
