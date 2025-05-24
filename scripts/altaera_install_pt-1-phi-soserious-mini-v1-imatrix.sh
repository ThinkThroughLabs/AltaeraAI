#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.1.0 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired Phi-SoSerious-Mini-V1-imatrix-GGUF model size/strategy:"

OPTIONS=(1 "Phi-SoSerious-Mini-V1-IQ1_M.gguf \ 917 MB"
         2 "Phi-SoSerious-Mini-V1-IQ1_S.gguf \ 842 MB"
         3 "Phi-SoSerious-Mini-V1-IQ2_M.gguf \ 1.32 GB"
         4 "Phi-SoSerious-Mini-V1-IQ2_S.gguf \ 1.22 GB"
         5 "Phi-SoSerious-Mini-V1-IQ2_XS.gguf \ 1.15 GB"
         6 "Phi-SoSerious-Mini-V1-IQ2_XXS.gguf \ 1.04 GB"
         7 "Phi-SoSerious-Mini-V1-IQ3_M.gguf \ 1.86 GB"
         8 "Phi-SoSerious-Mini-V1-IQ3_S.gguf \ 1.68 GB"
         9 "Phi-SoSerious-Mini-V1-IQ3_XS.gguf \ 1.63 GB"
         10 "Phi-SoSerious-Mini-V1-IQ3_XXS.gguf \ 1.51 GB"
         11 "Phi-SoSerious-Mini-V1-IQ4_NL.gguf \ 2.18 GB"
         12 "Phi-SoSerious-Mini-V1-IQ4_XS.gguf \ 2.06 GB"
         13 "Phi-SoSerious-Mini-V1-Q2_K.gguf \ 1.42 GB"
         14 "Phi-SoSerious-Mini-V1-Q2_K_S.gguf \ 1.33 GB"
         15 "Phi-SoSerious-Mini-V1-Q3_K_L.gguf \ 2.09 GB"
         16 "Phi-SoSerious-Mini-V1-Q3_K_M.gguf \ 1.96 GB"
         17 "Phi-SoSerious-Mini-V1-Q3_K_S.gguf \ 1.68 GB"
         18 "Phi-SoSerious-Mini-V1-Q4_0.gguf \ 2.18 GB"
         19 "Phi-SoSerious-Mini-V1-Q4_1.gguf \ 2.41 GB"
         20 "Phi-SoSerious-Mini-V1-Q4_K_M.gguf \ 2.39 GB"
         21 "Phi-SoSerious-Mini-V1-Q4_K_S.gguf \ 2.19 GB"
         22 "Phi-SoSerious-Mini-V1-Q5_0.gguf \ 2.65 GB"
         23 "Phi-SoSerious-Mini-V1-Q5_1.gguf \ 2.87 GB"
         24 "Phi-SoSerious-Mini-V1-Q5_K_M.gguf \ 2.82 GB"
         25 "Phi-SoSerious-Mini-V1-Q5_K_S.gguf \ 2.64 GB"
         26 "Phi-SoSerious-Mini-V1-Q6_K.gguf \ 3.14 GB"
         27 "Phi-SoSerious-Mini-V1-Q8_0.gguf \ 4.06 GB")


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
            echo "You chose 'Phi-SoSerious-Mini-V1-IQ1_M.gguf \ 917 MB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-IQ1_M.gguf'
OUTPUT='IQ1_M-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        2)
            echo "You chose 'Phi-SoSerious-Mini-V1-IQ1_S.gguf \ 842 MB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-IQ1_S.gguf'
OUTPUT='IQ1_S-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        3)
            echo "You chose 'Phi-SoSerious-Mini-V1-IQ2_M.gguf \ 1.32 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-IQ2_M.gguf'
OUTPUT='IQ2_M-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        4)
            echo "You chose 'Phi-SoSerious-Mini-V1-IQ2_S.gguf \ 1.22 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-IQ2_S.gguf'
OUTPUT='IQ2_S-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        5)
            echo "You chose 'Phi-SoSerious-Mini-V1-IQ2_XS.gguf \ 1.15 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-IQ2_XS.gguf'
OUTPUT='IQ2_XS-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        6)
            echo "You chose 'Phi-SoSerious-Mini-V1-IQ2_XXS.gguf \ 1.04 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-IQ2_XXS.gguf'
OUTPUT='IQ2_XXS-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        7)
            echo "You chose 'Phi-SoSerious-Mini-V1-IQ3_M.gguf \ 1.86 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-IQ3_M.gguf'
OUTPUT='IQ3_M-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        8)
            echo "You chose 'Phi-SoSerious-Mini-V1-IQ3_S.gguf \ 1.68 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-IQ3_S.gguf'
OUTPUT='IQ3_S-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        9)
            echo "You chose 'Phi-SoSerious-Mini-V1-IQ3_XS.gguf \ 1.63 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-IQ3_XS.gguf'
OUTPUT='IQ3_XS-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        10)
            echo "You chose 'Phi-SoSerious-Mini-V1-IQ3_XXS.gguf \ 1.51 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-IQ3_XXS.gguf'
OUTPUT='IQ3_XXS-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        11)
            echo "You chose 'Phi-SoSerious-Mini-V1-IQ4_NL.gguf \ 2.18 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-IQ4_NL.gguf'
OUTPUT='IQ4_NL-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        12)
            echo "You chose 'Phi-SoSerious-Mini-V1-IQ4_XS.gguf \ 2.06 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-IQ4_XS.gguf'
OUTPUT='IQ4_XS-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        13)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q2_K.gguf \ 1.42 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q2_K.gguf'
OUTPUT='Q2_K-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        14)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q2_K_S.gguf \ 1.33 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q2_K_S.gguf'
OUTPUT='Q2_K_S-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        15)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q3_K_L.gguf \ 2.09 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q3_K_L.gguf'
OUTPUT='Q3_K_L-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        16)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q3_K_M.gguf \ 1.96 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q3_K_M.gguf'
OUTPUT='Q3_K_M-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        17)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q3_K_S.gguf \ 1.68 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q3_K_S.gguf'
OUTPUT='Q3_K_S-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        18)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q4_0.gguf \ 2.18 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q4_0.gguf'
OUTPUT='Q4_0-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        19)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q4_1.gguf \ 2.41 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q4_1.gguf'
OUTPUT='Q4_1-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        20)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q4_K_M.gguf \ 2.39 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q4_K_M.gguf'
OUTPUT='Q4_K_M-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        21)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q4_K_S.gguf \ 2.19 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q4_K_S.gguf'
OUTPUT='Q4_K_S-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        22)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q5_0.gguf \ 2.65 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q5_0.gguf'
OUTPUT='Q5_0-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        23)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q5_1.gguf \ 2.87 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q5_1.gguf'
OUTPUT='Q5_1-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        24)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q5_K_M.gguf \ 2.82 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q5_K_M.gguf'
OUTPUT='Q5_K_M-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        25)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q5_K_S.gguf \ 2.64 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q5_K_S.gguf'
OUTPUT='Q5_K_S-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        26)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q6_K.gguf \ 3.14 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q6_K.gguf'
OUTPUT='Q6_K-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
        27)
            echo "You chose 'Phi-SoSerious-Mini-V1-Q8_0.gguf \ 4.06 GB'"
            cd '/data/data/com.termux/files/home/AltaeraAI-tmp/models'

URL='https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF/resolve/main/Phi-SoSerious-Mini-V1-Q8_0.gguf'
OUTPUT='Q8_0-Phi-SoSerious-Mini-V1.gguf'
            cd ../..
            clear
            ;;
esac
