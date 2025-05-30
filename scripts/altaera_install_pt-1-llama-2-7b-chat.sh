#!/bin/bash

HEIGHT=120
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="Installing AltaeraAI - AI model"
TITLE="AI Model Selection"
MENU="Choose your desired model:"

OPTIONS=(1 "llama-2-7b-chat.Q2_K.gguf \ 2.83 GB"
         2 "llama-2-7b-chat.Q3_K_L.gguf \ 3.6 GB"
         3 "llama-2-7b-chat.Q3_K_M.gguf \ 3.3 GB"
         4 "llama-2-7b-chat.Q3_K_S.gguf \ 2.95 GB"
         5 "llama-2-7b-chat.Q4_0.gguf \ 3.83 GB"
         6 "llama-2-7b-chat.Q4_K_M.gguf \ 4.08 GB"
         7 "llama-2-7b-chat.Q4_K_S.gguf \ 3.86 GB"
         8 "llama-2-7b-chat.Q5_0.gguf \ 4.65 GB"
         9 "llama-2-7b-chat.Q5_K_M.gguf \ 4.78 GB"
         10 "llama-2-7b-chat.Q5_K_S.gguf \ 4.65 GB"
         11 "llama-2-7b-chat.Q6_K.gguf \ 5.53 GB"
         12 "llama-2-7b-chat.Q8_0.gguf \ 7.16 GB")


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
            echo "You chose 'Q2_K-llama-2-7b-chat \ 2.83 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q2_K.gguf'
OUTPUT='llama-2-7b-chat.Q2_K.gguf'
            cd ../..
            clear
            ;;
        2)
            echo "You chose 'Q3_K_L-llama-2-7b-chat \ 3.6 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q3_K_L.gguf'
OUTPUT='llama-2-7b-chat.Q3_K_L.gguf'
            cd ../..
            clear
            ;;
        3)
            echo "You chose 'Q3_K_M-llama-2-7b-chat \ 3.3 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q3_K_M.gguf'
OUTPUT='Q3_K_M-llama-2-7b-chat.gguf'
            cd ../..
            clear
            ;;
        4)
            echo "You chose 'Q3_K_S-llama-2-7b-chat \ 2.95 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q3_K_S.gguf'
OUTPUT='Q3_K_S-llama-2-7b-chat.gguf'
            cd ../..
            clear
            ;;
        5)
            echo "You chose 'Q4_0-llama-2-7b-chat \ 3.83 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q4_0.gguf'
OUTPUT='Q4_0-llama-2-7b-chat.gguf'
            cd ../..
            clear
            ;;
        6)
            echo "You chose 'Q4_K_M-llama-2-7b-chat \ 4.08 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q4_K_M.gguf'
OUTPUT='Q4_K_M-llama-2-7b-chat.gguf'
            cd ../..
            clear
            ;;
        7)
            echo "You chose 'Q4_K_S-llama-2-7b-chat \ 3.86 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q4_K_S.gguf'
OUTPUT='Q4_K_S-llama-2-7b-chat.gguf'
            cd ../..
            clear
            ;;
        8)
            echo "You chose 'Q5_0-llama-2-7b-chat \ 4.65 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q5_0.gguf'
OUTPUT='Q5_0-llama-2-7b-chat.gguf'
            cd ../..
            clear
            ;;
        9)
            echo "You chose 'Q5_K_M-llama-2-7b-chat \ 4.78 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q5_K_M.gguf'
OUTPUT='Q5_K_M-llama-2-7b-chat.gguf'
            cd ../..
            clear
            ;;

        10)
            echo "You chose 'Q5_K_S-llama-2-7b-chat \ 4.65 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q5_K_S.gguf'
OUTPUT='Q5_K_S-llama-2-7b-chat.gguf'
            cd ../..
            clear
            ;;

        11)
            echo "You chose 'Q6_K-llama-2-7b-chat \ 5.53 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q6_K.gguf'
OUTPUT='Q6_K-llama-2-7b-chat.gguf'
            cd ../..
            clear
            ;;

        12)
            echo "You chose 'Q8_0-llama-2-7b-chat \ 7.16 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q8_0.gguf'
OUTPUT='Q8_0-llama-2-7b-chat.gguf'
            cd ../..
            clear
            ;;
esac
