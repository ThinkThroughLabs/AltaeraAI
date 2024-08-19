#!/bin/bash

dialog --title "Determining whether Maid is installed" \
        --backtitle "AltaeraAI - ollama Official Models: Front-end" \
        --yesno "Do you have 'Maid' installed on your device yet?" 7 60

response=$?
case $response in

        0)  
        clear
        echo "Please, open 'Maid', then expand the Back-end option on top of the interface and choose 'Ollama' to proceed"
          ;;
        1) ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
        255) ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
esac
