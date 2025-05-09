#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.0.5 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired rwkv7-goose-world3-1.5b-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "q2_k-rwkv7-goose-world3-1.5b.gguf \ 0.68 GB"
         3 "q3_k-rwkv7-goose-world3-1.5b.gguf \ 0.81 GB"
         4 "q3_k_l-rwkv7-goose-world3-1.5b.gguf \ 0.81 GB"
         5 "q4_0-rwkv7-goose-world3-1.5b.gguf \ 0.99 GB"
         6 "q4_1-rwkv7-goose-world3-1.5b.gguf \ 1.07 GB"
         7 "q4_k-rwkv7-goose-world3-1.5b.gguf \ 0.99 GB"
         8 "q4_k_s-rwkv7-goose-world3-1.5b.gguf \ 0.99 GB"
         9 "q5_0-rwkv7-goose-world3-1.5b.gguf \ 1.16 GB"
         10 "q5_1-rwkv7-goose-world3-1.5b.gguf \ 1.24 GB"
         11 "q5_k-rwkv7-goose-world3-1.5b.gguf \ 1.16 GB"
         12 "q5_k_s-rwkv7-goose-world3-1.5b.gguf \ 1.16 GB"
         13 "q6_k-rwkv7-goose-world3-1.5b.gguf \ 1.34 GB"
         14 "q8_0-rwkv7-goose-world3-1.5b.gguf \ 1.69 GB"
         15 "bf16-rwkv7-goose-world3-1.5b.gguf \ 3.08 GB"
         16 "f16-rwkv7-goose-world3-1.5b.gguf \ 3.08 GB"
         17 "f32-rwkv7-goose-world3-1.5b.gguf \ 6.03 GB")


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
            echo "You chose 'q2_k-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q2_K.gguf -O 'q2_k-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        3)
            echo "You chose 'q3_k-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q3_K.gguf -O 'q3_k-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        4)
            echo "You chose 'q3_k_l-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q3_K_L.gguf -O 'q3_k_l-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        5)
            echo "You chose 'q4_0-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q4_0.gguf -O 'q4_0-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        6)
            echo "You chose 'q4_1-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q4_1.gguf -O 'q4_1-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        7)
            echo "You chose 'q4_k-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q4_K.gguf -O 'q4_k-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;

        8)
            echo "You chose 'q4_k_s-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q4_K_S.gguf -O 'q4_k_s-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;

        9)
            echo "You chose 'q5_0-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q5_0.gguf -O 'q5_0-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;

        10)
            echo "You chose 'q5_1-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q5_1.gguf -O 'q5_1-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        11)
            echo "You chose 'q5_k-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q5_K.gguf -O 'q5_k-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        12)
            echo "You chose 'q5_k_s-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q5_K_S.gguf -O 'q5_k_s-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        13)
            echo "You chose 'q6_k-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q6_K.gguf -O 'q6_k-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        14)
            echo "You chose 'q8_0-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-Q8_0.gguf -O 'q8_0-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        15)
            echo "You chose 'bf16-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-BF16.gguf -O 'bf16-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        16)
            echo "You chose 'f16-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-F16.gguf -O 'f16-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;

        17)
            echo "You chose 'f32-rwkv7-goose-world3-1.5b.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/latestissue/rwkv7-goose-world3-1.5b-gguf/resolve/main/rwkv7-goose-world3-1.5b-F32.gguf -O 'f32-rwkv7-goose-world3-1.5b.gguf' -q --show-progress
            cd /root
            clear
            ;;
esac
