#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.1.0 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired gemma-3-4b-it-abliterated-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "q2_k-gemma-3-4b-it-abliterated.gguf \ 1.73 GB"
         3 "q3_k_m-gemma-3-4b-it-abliterated.gguf \ 2.10 GB"
         4 "q4_k_m.gemma-3-4b-it-abliterated.gguf \ 2.49 GB"
         5 "q5_k_m.gemma-3-4b-it-abliterated.gguf \ 2.83 GB"
         6 "q6_k-gemma-3-4b-it-abliterated.gguf \ 3.19 GB"
         7 "q8_0-gemma-3-4b-it-abliterated.gguf \ 4.13 GB"
         8 "f16-gemma-3-4b-it-abliterated.gguf \ 7.77 GB")


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
            echo "You chose 'q2_k-gemma-3-4b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mlabonne/gemma-3-4b-it-abliterated-GGUF/resolve/main/gemma-3-4b-it-abliterated.q2_k.gguf -O 'q2_k-gemma-3-4b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;
        3)
            echo "You chose 'q3_k_m.gemma-3-4b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mlabonne/gemma-3-4b-it-abliterated-GGUF/resolve/main/gemma-3-4b-it-abliterated.q3_k_m.gguf -O 'q3_k_m.gemma-3-4b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;
        4)
            echo "You chose 'q4_k_m.gemma-3-4b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mlabonne/gemma-3-4b-it-abliterated-GGUF/resolve/main/gemma-3-4b-it-abliterated.q4_k_m.gguf -O 'q4_k_m.gemma-3-4b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;
        5)
            echo "You chose 'q5_k_m.gemma-3-4b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mlabonne/gemma-3-4b-it-abliterated-GGUF/resolve/main/gemma-3-4b-it-abliterated.q5_k_m.gguf -O 'q5_k_m.gemma-3-4b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;
        6)
            echo "You chose 'q6_k-gemma-3-4b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mlabonne/gemma-3-4b-it-abliterated-GGUF/resolve/main/gemma-3-4b-it-abliterated.q6_k.gguf -O 'q6_k-gemma-3-4b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;
        7)
            echo "You chose 'q8_0-gemma-3-4b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget hhttps://huggingface.co/mlabonne/gemma-3-4b-it-abliterated-GGUF/resolve/main/gemma-3-4b-it-abliterated.q8_0.gguf -O 'q8_0-gemma-3-4b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;

        8)
            echo "You chose 'f16-gemma-3-4b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mlabonne/gemma-3-4b-it-abliterated-GGUF/resolve/main/gemma-3-4b-it-abliterated.fp16.gguf -O 'f16-gemma-3-4b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;
esac
