#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - Custom AI Model"
TITLE="AI Models Settings"
MENU="What would you like to do?:"

OPTIONS=(1 "[...] Go Back"
         2 "Browse HuggingFace GGUF Models [URL]"
         3 "Enter Model URL")


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
            './AltaeraAI/altaera-manage_models.sh'
            ;;
        2)
            termux-open-url 'https://huggingface.co/models?search=GGUF'
            './AltaeraAI/altaera-custom_ai_model.sh'
            ;;
        3)
            clear
            './AltaeraAI/altaera-custom_ai_model_url.sh'
            './AltaeraAI/altaera-custom_ai_model.sh'
            exit
            ;;
esac
