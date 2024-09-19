HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - Converting & Quantizing"
TITLE="Convert & Quantize GGUF Models"
MENU="What would you like to do?:"

OPTIONS=(1 "[...] Go Back"
         2 "Convert HF to GGUF [...]")


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
            bash 'altaera-convert_hf_to_gguf.sh'
            ;;
esac
