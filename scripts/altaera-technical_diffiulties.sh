#!/bin/bash

        echo "Checking for instabilities...";
        
                {
                cd "AltaeraAI"
                wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-functional_status.sh
                chmod a+x 'altaera-functional_status.sh'
                cd ..
                } &> /dev/null 2>&1;
 
         if [ $(bash 'AltaeraAI/altaera-functional_status.sh'
          ) = "true" ]; then
          rm -rf 'AltaeraAI/altaera-functional_status.sh'
          exit
          else
          dialog --backtitle "AltaeraAI" \
          --title "AltaeraAI - Technical Difficulties" \
          --msgbox 'AltaeraAI is experiencing malfunctions at this very moment. If you have recently downloaded or updated it, chances are some things will be broken. Please, give us some time to carry out code repairs. Sorry for the inconvenience!' 10 30

          exit
        fi
          ;;
        1) ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
        255) ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
esac
