#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v5.2.2 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired Tiny-Vicuna-1B-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "tiny-vicuna-1b.q2_k.gguf \ 482 MB"
         3 "tiny-vicuna-1b.q3_k_m.gguf \ 550 MB"
         4 "tiny-vicuna-1b.q4_k_m.gguf \ 668 MB"
         5 "tiny-vicuna-1b.q5_k_m.gguf \ 782 MB"
         6 "tiny-vicuna-1b.q6_k.gguf \ 903 MB"
         7 "tiny-vicuna-1b.q8_0.gguf \ 1.17 GB")


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
            echo "You chose 'tiny-vicuna-1b.q2_k.gguf \ 482 MB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/afrideva/Tiny-Vicuna-1B-GGUF/resolve/main/tiny-vicuna-1b.q2_k.gguf -O 'q2_k.tiny-vicuna-1b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        3)
            echo "You chose 'tiny-vicuna-1b.q3_k_m.gguf \ 550 MB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/afrideva/Tiny-Vicuna-1B-GGUF/resolve/main/tiny-vicuna-1b.q3_k_m.gguf -O 'q3_k_m.tiny-vicuna-1b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        4)
            echo "You chose 'tiny-vicuna-1b.q4_k_m.gguf \ 668 MB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/afrideva/Tiny-Vicuna-1B-GGUF/resolve/main/tiny-vicuna-1b.q4_k_m.gguf -O 'q4_k_m.tiny-vicuna-1b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        5)
            echo "You chose 'tiny-vicuna-1b.q5_k_m.gguf \ 782 MB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/afrideva/Tiny-Vicuna-1B-GGUF/resolve/main/tiny-vicuna-1b.q5_k_m.gguf -O 'q5_k_m.tiny-vicuna-1b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        6)
            echo "You chose 'tiny-vicuna-1b.q6_k.gguf \ 903 MB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/afrideva/Tiny-Vicuna-1B-GGUF/resolve/main/tiny-vicuna-1b.q6_k.gguf -O 'q6_k.tiny-vicuna-1b.gguf' -q --show-progress
            cd /root
            clear
            ;;
        7)
            echo "You chose 'tiny-vicuna-1b.q8_0.gguf \ 1.17 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/afrideva/Tiny-Vicuna-1B-GGUF/resolve/main/tiny-vicuna-1b.q8_0.gguf -O 'q8_0.tiny-vicuna-1b.gguf' -q --show-progress
            cd /root
            clear
            ;;

esac
