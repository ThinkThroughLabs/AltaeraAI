#!/bin/bash

HEIGHT=120
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - AI Model Settings"
TITLE="AI Model Selection"
MENU="Choose your desired Yi-1.5-6B-Chat-GGUF model size/strategy:"

OPTIONS=(1 "Yi-1.5-6B-Chat.Q2_K.gguf \ 2.34 GB"
         2 "Yi-1.5-6B-Chat.Q3_K_L.gguf \ 3.24 GB"
         3 "Yi-1.5-6B-Chat.Q3_K_M.gguf \ 2.99 GB"
         4 "Yi-1.5-6B-Chat.Q3_K_S.gguf \ 2.71 GB"
         5 "Yi-1.5-6B-Chat.Q4_K_M.gguf \ 3.67 GB"
         6 "Yi-1.5-6B-Chat.Q4_K_S.gguf \ 3.5 GB"
         7 "Yi-1.5-6B-Chat.Q5_K_M.gguf \ 4.3 GB"
         8 "Yi-1.5-6B-Chat.Q5_K_S.gguf \ 4.2 GB"
         9 "Yi-1.5-6B-Chat.Q6_K.gguf \ 4.97 GB"
         10 "Yi-1.5-6B-Chat-Q8_0.gguf")


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
            echo "You chose 'Yi-1.5-6B-Chat.Q2_K.gguf \ 2.34 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/Yi-1.5-6B-Chat-GGUF/resolve/main/Yi-1.5-6B-Chat.Q2_K.gguf \ 2.34 GB -O 'Q2_K.Yi-1.5-6B-Chat.gguf' -q --show-progress
            cd ../..
            clear
            ;;
        2)
            echo "You chose 'Yi-1.5-6B-Chat.Q3_K_L.gguf \ 3.24 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/Yi-1.5-6B-Chat-GGUF/resolve/main/Yi-1.5-6B-Chat.Q3_K_L.gguf \ 3.24 GB -O 'Q3_K_L.Yi-1.5-6B-Chat.gguf' -q --show-progress
            cd ../..
            clear
            ;;
        3)
            echo "You chose 'Yi-1.5-6B-Chat.Q3_K_M.gguf \ 2.99 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/Yi-1.5-6B-Chat-GGUF/resolve/main/Yi-1.5-6B-Chat.Q3_K_M.gguf \ 2.99 GB -O 'Q3_K_M.Yi-1.5-6B-Chat.gguf' -q --show-progress
            cd ../..
            clear
            ;;
        4)
            echo "You chose 'Yi-1.5-6B-Chat.Q3_K_S.gguf \ 2.71 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/Yi-1.5-6B-Chat-GGUF/resolve/main/Yi-1.5-6B-Chat.Q3_K_S.gguf \ 2.71 GB -O 'Q3_K_S.Yi-1.5-6B-Chat.gguf' -q --show-progress
            cd ../..
            clear
            ;;
        5)
            echo "You chose 'Yi-1.5-6B-Chat.Q4_K_M.gguf \ 3.67 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/Yi-1.5-6B-Chat-GGUF/resolve/main/Yi-1.5-6B-Chat.Q4_K_M.gguf \ 3.67 GB -O 'Q4_K_M.Yi-1.5-6B-Chat.gguf' -q --show-progress
            cd ../..
            clear
            ;;
        6)
            echo "You chose 'Yi-1.5-6B-Chat.Q4_K_S.gguf \ 3.5 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/Yi-1.5-6B-Chat-GGUF/resolve/main/Yi-1.5-6B-Chat.Q4_K_S.gguf \ 3.5 GB -O 'Q4_K_S.Yi-1.5-6B-Chat.gguf' -q --show-progress
            cd ../..
            clear
            ;;
        7)
            echo "You chose 'Yi-1.5-6B-Chat.Q5_K_M.gguf \ 4.3 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/Yi-1.5-6B-Chat-GGUF/resolve/main/Yi-1.5-6B-Chat.Q5_K_M.gguf \ 4.3 GB -O 'Q5_K_M.Yi-1.5-6B-Chat.gguf' -q --show-progress
            cd ../..
            clear
            ;;
        8)
            echo "You chose 'Yi-1.5-6B-Chat.Q5_K_S.gguf \ 4.2 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/Yi-1.5-6B-Chat-GGUF/resolve/main/Yi-1.5-6B-Chat.Q5_K_S.gguf \ 4.2 GB -O 'Q5_K_S.Yi-1.5-6B-Chat.gguf' -q --show-progress
            cd ../..
            clear
            ;;
        9)
            echo "You chose 'Yi-1.5-6B-Chat.Q6_K.gguf \ 4.97 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/Yi-1.5-6B-Chat-GGUF/resolve/main/Yi-1.5-6B-Chat.Q6_K.gguf \ 4.97 GB -O 'Q6_K.Yi-1.5-6B-Chat.gguf' -q --show-progress
            cd ../..
            clear
            ;;

        10)
            echo "You chose 'Yi-1.5-6B-Chat-Q8_0.gguf'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/lmstudio-community/Yi-1.5-6B-Chat-GGUF/resolve/main/Yi-1.5-6B-Chat-Q8_0.gguf -O 'Q8_0.Yi-1.5-6B-Chat.gguf' -q --show-progress
            cd ../..
            clear
            ;;
esac
