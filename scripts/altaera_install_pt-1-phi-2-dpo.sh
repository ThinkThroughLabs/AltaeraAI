#!/bin/bash

HEIGHT=120
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - AI Model Settings"
TITLE="AI Model Selection"
MENU="Choose your desired Phi-2-DPO model size:"

OPTIONS=(1 "phi-2-dpo.Q2_K.gguf \ 1.17 GB"
         2 "phi-2-dpo.Q3_K_L.gguf \ 1.6 GB"
         3 "phi-2-dpo.Q3_K_M.gguf \ 1.48 GB"
         4 "phi-2-dpo.Q3_K_S.gguf \ 1.25 GB"
         5 "phi-2-dpo.Q4_0.gguf \ 1.6 GB"
         6 "phi-2-dpo.Q4_K_M.gguf \ 1.79 GB"
         7 "phi-2-dpo.Q4_K_S.gguf \ 1.61 GB"
         8 "phi-2-dpo.Q5_0.gguf \ 1.93 GB"
         9 "phi-2-dpo.Q5_K_M.gguf \ 2.07 GB"
         10 "phi-2-dpo.Q5_K_S.gguf \ 1.93 GB"
         11 "phi-2-dpo.Q6_K.gguf \ 2.28 GB"
         12 "phi-2-dpo.Q8_0.gguf \ 2.95 GB")


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
            echo "You chose 'phi-2-dpo.Q2_K'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/TheBloke/phi-2-dpo-GGUF/resolve/main/phi-2-dpo.Q2_K.gguf \ 1.17 GB -q --show-progress
            cd ../..
            clear
            ;;
        2)
            echo "You chose 'phi-2-dpo.Q3_K_L"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/TheBloke/phi-2-dpo-GGUF/resolve/main/phi-2-dpo.Q3_K_L.gguf \ 1.6 GB -q --show-progress
            cd ../..
            clear
            ;;
        3)
            echo "You chose 'phi-2-dpo.Q3_K_M'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/TheBloke/phi-2-dpo-GGUF/resolve/main/phi-2-dpo.Q3_K_M.gguf \ 1.48 GB -q --show-progress
            cd ../..
            clear
            ;;
        4)
            echo "You chose 'phi-2-dpo.Q3_K_S'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/TheBloke/phi-2-dpo-GGUF/resolve/main/phi-2-dpo.Q3_K_S.gguf \ 1.25 GB -q --show-progress
            cd ../..
            clear
            ;;
        5)
            echo "You chose 'phi-2-dpo.Q4_0'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/TheBloke/phi-2-dpo-GGUF/resolve/main/phi-2-dpo.Q4_0.gguf \ 1.6 GB -q --show-progress
            cd ../..
            clear
            ;;
        6)
            echo "You chose 'phi-2-dpo.Q4_K_M'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/TheBloke/phi-2-dpo-GGUF/resolve/main/phi-2-dpo.Q4_K_M.gguf \ 1.79 GB -q --show-progress
            cd ../..
            clear
            ;;
        7)
            echo "You chose 'phi-2-dpo.Q4_K_S'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/TheBloke/phi-2-dpo-GGUF/resolve/main/phi-2-dpo.Q4_K_S.gguf \ 1.61 GB -q --show-progress
            cd ../..
            clear
            ;;
        8)
            echo "You chose 'phi-2-dpo.Q5_0'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/TheBloke/phi-2-dpo-GGUF/resolve/main/phi-2-dpo.Q5_0.gguf \ 1.93 GB -q --show-progress
            cd ../..
            clear
            ;;
        9)
            echo "You chose 'phi-2-dpo.Q5_K_M'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/TheBloke/phi-2-dpo-GGUF/resolve/main/phi-2-dpo.Q5_K_M.gguf \ 2.07 GB -q --show-progress
            cd ../..
            clear
            ;;
        10)
            echo "You chose 'phi-2-dpo.Q5_K_S'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/TheBloke/phi-2-dpo-GGUF/resolve/main/phi-2-dpo.Q5_K_S.gguf \ 1.93 GB -q --show-progress
            cd ../..
            clear
            ;;
        11)
            echo "You chose 'phi-2-dpo.Q6_K'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/TheBloke/phi-2-dpo-GGUF/resolve/main/phi-2-dpo.Q6_K.gguf \ 2.28 GB -q --show-progress
            cd ../..
            clear
            ;;
        12)
            echo "You chose 'phi-2-dpo.Q8_0'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/TheBloke/phi-2-dpo-GGUF/resolve/main/phi-2-dpo.Q8_0.gguf \ 2.95 GB -q --show-progress
            cd ../..
            clear
            ;;

esac
