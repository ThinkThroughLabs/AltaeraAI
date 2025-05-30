#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.1.4 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired KobbleTinyV2-1.1B-GGUF model size/strategy:"

OPTIONS=(1 "KobbleTiny-Q4_K.gguf \ 668 MB"
         2 "KobbleTiny-Q6_K.gguf \ 903 MB"
         3 "KobbleTiny-Q8_0.gguf \ 1.17 GB"
         4 "KobbleTiny-f16.gguf \ 2.2 GB")


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
            echo "You chose 'KobbleTiny-Q4_K.gguf \ 668 MB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/concedo/KobbleTinyV2-1.1B-GGUF/resolve/main/KobbleTiny-Q4_K.gguf'
OUTPUT='Q4_K-KobbleTiny.gguf'
            cd ../..
            clear
            ;;
        2)
            echo "You chose 'KobbleTiny-Q6_K.gguf \ 903 MB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/concedo/KobbleTinyV2-1.1B-GGUF/resolve/main/KobbleTiny-Q6_K.gguf'
OUTPUT='Q6_K-KobbleTiny.gguf'
            cd ../..
            clear
            ;;
        3)
            echo "You chose 'KobbleTiny-Q8_0.gguf \ 1.17 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/concedo/KobbleTinyV2-1.1B-GGUF/resolve/main/KobbleTiny-Q8_0.gguf'
OUTPUT='Q8_0-KobbleTiny.gguf'
            cd ../..
            clear
            ;;
        4)
            echo "You chose 'KobbleTiny-f16.gguf \ 2.2 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/concedo/KobbleTinyV2-1.1B-GGUF/resolve/main/KobbleTiny-f16.gguf'
OUTPUT='f16-KobbleTiny.gguf'
            cd ../..
            clear
            ;;
esac
