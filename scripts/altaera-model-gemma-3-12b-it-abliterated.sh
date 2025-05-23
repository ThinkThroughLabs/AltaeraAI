#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.1.0 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired gemma-3-12b-it-abliterated-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "q2_k-gemma-3-12b-it-abliterated.gguf \ 4.77 GB"
         3 "q3_k_m-gemma-3-12b-it-abliterated.gguf \ 6.01 GB"
         4 "q4_k_m.gemma-3-12b-it-abliterated.gguf \ 7.30 GB"
         5 "q5_k_m.gemma-3-12b-it-abliterated.gguf \ 8.45 GB"
         6 "q6_k-gemma-3-12b-it-abliterated.gguf \ 9.66 GB"
         7 "q8_0-gemma-3-12b-it-abliterated.gguf \ 12.5 GB"
         8 "f16-gemma-3-12b-it-abliterated.gguf \ 23.5 GB")


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
            echo "You chose 'q2_k-gemma-3-12b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-Q2_K.gguf -O 'q2_k-gemma-3-12b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;
        3)
            echo "You chose 'q3_k_m.gemma-3-12b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-Q2_K_L.gguf -O 'q3_k_m.gemma-3-12b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;
        4)
            echo "You chose 'q4_k_m.gemma-3-12b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-Q3_K_M.gguf -O 'q4_k_m.gemma-3-12b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;
        5)
            echo "You chose 'q5_k_m.gemma-3-12b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-Q3_K_S.gguf -O 'q5_k_m.gemma-3-12b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;
        6)
            echo "You chose 'q6_k-gemma-3-12b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-IQ4_NL.gguf -O 'q6_k-gemma-3-12b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;
        7)
            echo "You chose 'q8_0-gemma-3-12b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-IQ4_XS.gguf -O 'q8_0-gemma-3-12b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;

        8)
            echo "You chose 'f16-gemma-3-12b-it-abliterated.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-Q4_K_M.gguf -O 'f16-gemma-3-12b-it-abliterated.gguf' -q --show-progress
            cd /root
            clear
            ;;
esac
