#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.0.6 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired gemma-3-1b-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "q2_k-gemma-3-1b-it.gguf \ 0.69 GB"
         3 "q3_k_l.gemma-3-1b-it.gguf \ 0.75 GB"
         4 "q3_k_m.gemma-3-1b-it.gguf \ 0.72 GB"
         5 "q3_k_s.gemma-3-1b-it.gguf \ 0.69 GB"
         6 "iq4_nl-gemma-3-1b-it.gguf \ 0.72 GB"
         7 "iq4_xs-gemma-3-1b-it.gguf \ 0.71 GB"
         8 "q4_k_m-gemma-3-1b-it.gguf \ 0.81 GB"
         9 "q4_k_s-gemma-3-1b-it.gguf \ 0.78 GB"
         10 "q4_0-gemma-3-1b-it.gguf \ 0.72 GB"
         11 "q4_1-gemma-3-1b-it.gguf \ 0.76 GB"
         12 "q5_k_m-gemma-3-1b-it.gguf \ 0.85 GB"
         13 "q5_k_s-gemma-3-1b-it.gguf \ 0.84 GB"
         14 "q6_k-gemma-3-1b-it.gguf \ 1.01 GB"
         15 "q8_0-gemma-3-1b-it.gguf \ 1.07 GB"
         16 "f16-gemma-3-1b-it.gguf \ 2.01 GB")


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
            ./AltaeraAI/altaera-model.sh
            ;;
        2)
            echo "You chose 'q2_k-gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it.Q2_K.gguf -O 'q2_k-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        3)
            echo "You chose 'q3_k_l.gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it.Q3_K_L.gguf -O 'q3_k_l-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        4)
            echo "You chose 'q3_k_m.gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it.Q3_K_M.gguf -O 'q3_k_m-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        5)
            echo "You chose 'q3_k_s.gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it.Q3_K_S.gguf -O 'q3_k_s-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        6)
            echo "You chose 'iq4_nl-gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/unsloth/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it-IQ4_NL.gguf -O 'q4_k_m-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        7)
            echo "You chose 'iq4_xs-gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/unsloth/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it-IQ4_XS.gguf -O 'q4_k_s-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;

        8)
            echo "You chose 'iq4_k_m-gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it.Q4_K_M.gguf -O 'iq4_xs-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;

        9)
            echo "You chose 'q4_k_s-gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it.Q4_K_S.gguf -O 'q5_k_m-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;

        10)
            echo "You chose 'q4_0-gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/unsloth/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it-Q4_0.gguf -O 'q5_k_s-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        11)
            echo "You chose 'q4_1-gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/unsloth/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it-Q4_1.gguf -O 'q6_k-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        12)
            echo "You chose 'q5_k_m-gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it.Q5_K_M.gguf -O 'q8_0-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        13)
            echo "You chose 'q5_k_s-gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it.Q5_K_S.gguf -O 'f16-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        14)
            echo "You chose 'q6_k-gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it.Q6_K.gguf -O 'f16-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        15)
            echo "You chose 'q8_0-gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it.Q8_0.gguf -O 'f16-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        16)
            echo "You chose 'f16-gemma-3-1b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/MaziyarPanahi/gemma-3-1b-it-GGUF/resolve/main/gemma-3-1b-it.fp16.gguf -O 'f16-gemma-3-1b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
esac
