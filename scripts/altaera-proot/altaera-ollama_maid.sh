#!/bin/bash

dialog --title "Determining whether Maid is installed" \
        --backtitle "AltaeraAI - ollama Official Models: Front-end" \
        --yesno "Do you have 'Maid' installed on your device yet?" 7 60

response=$?
case $response in

        0)  
        clear
        echo "Please, open 'Maid', then expand the Back-end option on top of the interface and choose 'Ollama' to proceed.
        You can also use the CLI interface on the bottom of this terminal window, if you wish
        
        " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
        echo "________________________________________________________________
        " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
          ;;
        1) bash '/root/altaera-ollama.sh';;
        255) bash '/root/altaera-ollama.sh';;
esac
