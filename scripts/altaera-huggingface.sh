#!/bin/bash

HEIGHT=20
WIDTH=40
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - HuggingFace Models"
TITLE="Selecting among available options"
MENU="Choose your option:"

OPTIONS=(1 "Search for GGUF Models (HuggingFace) [URL]"
         2 "Download Manual [URL]")


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
            termux-open-url 'https://huggingface.co/models?search=GGUF'
            ;;
        2)
            clear
            termux-open-url 'https://altaera.ai/custom-ai-model/'
            ;;
esac
