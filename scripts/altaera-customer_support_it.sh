#!/bin/bash

HEIGHT=30
WIDTH=60
CHOICE_HEIGHT=7
BACKTITLE="AltaeraAI"
TITLE="Assistenza clienti"
MENU="Di cosa avete bisogno?"

OPTIONS=(1 "Politica sulla privacy [URL]"
         2 "Assistenza tecnica [URL]"
         3 "Contatto [URL]"
         4 "FAQ [URL] -  ...nella creazione")
         

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
            clear
            termux-open-url 'https://altaera.ai/privacy-policy/'
            ;;
        2)
            clear
            termux-open-url 'https://altaera.ai/technical-support/'
            ;;
        3)
            clear
            termux-open-url 'https://altaera.ai/contact/'
            ;;
        4)
            clear
            termux-open-url 'https://altaera.ai/faq/'
            ;;
esac
