#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.0.6 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired gemma-3-4b-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "q2_k-gemma-3-4b-it.gguf \ 1.73 GB"
         3 "q3_k_l-gemma-3-4b-it.gguf \ 2.24 GB"
         4 "q3_k_m.gemma-3-4b-it.gguf \ 2.1 GB"
         5 "q3_k_s.gemma-3-4b-it.gguf \ 1.94 GB"
         6 "q4_k_m-gemma-3-4b-it.gguf \ 2.49 GB"
         7 "q4_k_s-gemma-3-4b-it.gguf \ 2.38 GB"
         8 "iq4_x_s-gemma-3-4b-it.gguf \ 2.28 GB"
         9 "q5_k_m-gemma-3-4b-it.gguf \ 2.83 GB"
         10 "q5_k_s-gemma-3-4b-it.gguf \ 2.76 GB"
         11 "q6_k-gemma-3-4b-it.gguf \ 3.19 GB"
         12 "q8_0-gemma-3-4b-it.gguf \ 4.13 GB"
         13 "f16-gemma-3-4b-it.gguf \ 7.77 GB")


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
            echo "You chose 'q2_k-gemma-3-4b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mradermacher/gemma-3-4b-it-GGUF/resolve/main/gemma-3-4b-it.Q2_K.gguf -O 'q2_k-gemma-3-4b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        3)
            echo "You chose 'q3_k_l-gemma-3-4b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mradermacher/gemma-3-4b-it-GGUF/resolve/main/gemma-3-4b-it.Q3_K_L.gguf -O 'q3_k_l-gemma-3-4b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        4)
            echo "You chose 'q3_k_m.gemma-3-4b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mradermacher/gemma-3-4b-it-GGUF/resolve/main/gemma-3-4b-it.Q3_K_M.gguf -O 'q3_k_m-gemma-3-4b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        5)
            echo "You chose 'q3_k_s.gemma-3-4b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mradermacher/gemma-3-4b-it-GGUF/resolve/main/gemma-3-4b-it.Q3_K_S.gguf -O 'q3_k_s-gemma-3-4b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        6)
            echo "You chose 'q4_k_m-gemma-3-4b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mradermacher/gemma-3-4b-it-GGUF/resolve/main/gemma-3-4b-it.Q4_K_M.gguf -O 'q4_k_m-gemma-3-4b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        7)
            echo "You chose 'q4_k_s-gemma-3-4b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mradermacher/gemma-3-4b-it-GGUF/resolve/main/gemma-3-4b-it.Q4_K_S.gguf -O 'q4_k_s-gemma-3-4b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;

        8)
            echo "You chose 'iq4_x_s-gemma-3-4b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mradermacher/gemma-3-4b-it-GGUF/resolve/main/gemma-3-4b-it.IQ4_XS.gguf -O 'iq4_xs-gemma-3-4b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;

        9)
            echo "You chose 'q5_k_m-gemma-3-4b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mradermacher/gemma-3-4b-it-GGUF/resolve/main/gemma-3-4b-it.Q5_K_M.gguf -O 'q5_k_m-gemma-3-4b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;

        10)
            echo "You chose 'q5_k_s-gemma-3-4b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mradermacher/gemma-3-4b-it-GGUF/resolve/main/gemma-3-4b-it.Q5_K_S.gguf -O 'q5_k_s-gemma-3-4b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        11)
            echo "You chose 'q6_k-gemma-3-4b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mradermacher/gemma-3-4b-it-GGUF/resolve/main/gemma-3-4b-it.Q6_K.gguf -O 'q6_k-gemma-3-4b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        12)
            echo "You chose 'q8_0-gemma-3-4b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mradermacher/gemma-3-4b-it-GGUF/resolve/main/gemma-3-4b-it.Q8_0.gguf -O 'q8_0-gemma-3-4b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
        13)
            echo "You chose 'f16-gemma-3-4b-it.gguf'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/mradermacher/gemma-3-4b-it-GGUF/resolve/main/gemma-3-4b-it.f16.gguf -O 'f16-gemma-3-4b-it.gguf' -q --show-progress
            cd /root
            clear
            ;;
esac
