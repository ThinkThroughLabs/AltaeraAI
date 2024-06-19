#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v5.2 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired Phi-3-mini-4k-instruct-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "phi-3-mini-4k-instruct.Q2_K.gguf \ 1.45 GB"
         3 "phi-3-mini-4k-instruct.Q3_K_L.gguf \ 2.05 GB"
         4 "phi-3-mini-4k-instruct.Q3_K_M.gguf \ 1.88 GB"
         5 "phi-3-mini-4k-instruct.Q3_K_S.gguf \ 1.68 GB"
         6 "phi-3-mini-4k-instruct.Q4_0.gguf \ 2.18 GB"
         7 "phi-3-mini-4k-instruct.Q4_1.gguf \ 2.41 GB"
         8 "phi-3-mini-4k-instruct.Q4_K.gguf \ 2.32 GB"
         9 "phi-3-mini-4k-instruct.Q4_K_M.gguf \ 2.32 GB"
         10 "phi-3-mini-4k-instruct.Q4_K_S.gguf \ 2.19 GB"
         11 "phi-3-mini-4k-instruct.Q5_0.gguf \ 2.64 GB"
         12 "phi-3-mini-4k-instruct.Q5_1.gguf \ 2.87 GB"
         13 "phi-3-mini-4k-instruct.Q5_K.gguf \ 2.72 GB"
         14 "phi-3-mini-4k-instruct.Q5_K_M.gguf \ 2.72 GB"
         15 "phi-3-mini-4k-instruct.Q5_K_S.gguf \ 2.64 GB"
         16 "phi-3-mini-4k-instruct.Q6_K.gguf \ 3.14 GB"
         17 "phi-3-mini-4k-instruct.Q8_0.gguf \ 4.06 GB"
         18 "phi-3-mini-4k-instruct.fp16.gguf \ 7.64 GB")


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
            echo "You chose 'phi-3-mini-4k-instruct.Q2_K.gguf \ 1.45 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q2_K.gguf -O 'Q2_K.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        3)
            echo "You chose 'phi-3-mini-4k-instruct.Q3_K_L.gguf \ 2.05 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q3_K_L.gguf -O 'Q3_K_L.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        4)
            echo "You chose 'phi-3-mini-4k-instruct.Q3_K_M.gguf \ 1.88 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q3_K_M.gguf -O 'Q3_K_M.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        5)
            echo "You chose 'phi-3-mini-4k-instruct.Q3_K_S.gguf \ 1.68 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q3_K_S.gguf -O 'Q3_K_S.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        6)
            echo "You chose 'phi-3-mini-4k-instruct.Q4_0.gguf \ 2.18 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q4_0.gguf -O 'Q4_0.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        7)
            echo "You chose 'phi-3-mini-4k-instruct.Q4_1.gguf \ 2.41 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q4_1.gguf -O 'Q4_1.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        8)
            echo "You chose 'phi-3-mini-4k-instruct.Q4_K.gguf \ 2.32 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q4_K.gguf -O 'Q4_K.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        9)
            echo "You chose 'phi-3-mini-4k-instruct.Q4_K_M.gguf \ 2.32 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q4_K_M.gguf -O 'Q4_K_M.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        10)
            echo "You chose 'phi-3-mini-4k-instruct.Q4_K_S.gguf \ 2.19 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q4_K_S.gguf -O 'Q4_K_S.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;

        11)
            echo "You chose 'phi-3-mini-4k-instruct.Q5_0.gguf \ 2.64 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q5_0.gguf -O 'Q5_0.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;

        12)
            echo "You chose 'phi-3-mini-4k-instruct.Q5_1.gguf \ 2.87 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q5_1.gguf -O 'Q5_1.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;

        13)
            echo "You chose 'phi-3-mini-4k-instruct.Q5_K.gguf \ 2.72 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q5_K.gguf -O 'Q5_K.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        14)
            echo "You chose 'phi-3-mini-4k-instruct.Q5_K_M.gguf \ 2.72 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q5_K_M.gguf -O 'Q5_K_M.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        15)
            echo "You chose 'phi-3-mini-4k-instruct.Q5_K_S.gguf \ 2.64 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q5_K_S.gguf -O 'Q5_K_S.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        16)
            echo "You chose 'phi-3-mini-4k-instruct.Q6_K.gguf \ 3.14 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q6_K.gguf -O 'Q6_K.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        17)
            echo "You chose 'phi-3-mini-4k-instruct.Q8_0.gguf \ 4.06 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q8_0.gguf -O 'Q8_0.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
        18)
            echo "You chose 'phi-3-mini-4k-instruct.fp16.gguf \ 7.64 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.fp16.gguf -O 'fp16.phi-3-mini-4k-instruct.gguf' -q --show-progress
            cd /root
            clear
            ;;
esac
