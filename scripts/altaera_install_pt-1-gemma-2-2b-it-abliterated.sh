#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v5.7.5 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired gemma-2-2b-it-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "Gemma Terms of Use [URL] - [Must Read Before]"
         3 "gemma-2-2b-it-abliterated-IQ3_M.gguf \ 1.39 GB"
         4 "gemma-2-2b-it-abliterated-IQ4_XS.gguf \ 1.57 GB"
         5 "gemma-2-2b-it-abliterated-Q2_K_L.gguf \ 1.37 GB"
         6 "gemma-2-2b-it-abliterated-Q3_K_L.gguf \ 1.55 GB"
         7 "gemma-2-2b-it-abliterated-Q3_K_XL.gguf \ 1.69 GB"
         8 "gemma-2-2b-it-abliterated-Q4_K_L.gguf \ 1.85 GB"
         9 "gemma-2-2b-it-abliterated-Q4_K_M.gguf \ 1.71 GB"
         10 "gemma-2-2b-it-abliterated-Q4_K_S.gguf \ 1.64 GB"
         11 "gemma-2-2b-it-abliterated-Q5_K_L.gguf \ 2.07 GB"
         12 "gemma-2-2b-it-abliterated-Q5_K_M.gguf \ 1.92 GB"
         13 "gemma-2-2b-it-abliterated-Q5_K_S.gguf \ 1.88 GB"
         14 "gemma-2-2b-it-abliterated-Q6_K.gguf \ 2.15 GB"
         15 "gemma-2-2b-it-abliterated-Q6_K_L.gguf \ 2.29 GB"
         16 "gemma-2-2b-it-abliterated-Q8_0.gguf \ 2.78 GB"
         17 "gemma-2-2b-it-abliterated-f32.gguf \ 10.5 GB")


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
            termux-open-url 'https://ai.google.dev/gemma/terms'
            ;;
        3)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-IQ3_M.gguf \ 1.39 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-IQ3_M.gguf -O 'IQ3_M-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        4)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-IQ4_XS.gguf \ 1.57 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-IQ4_XS.gguf -O 'IQ4_XS-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        5)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-Q2_K_L.gguf \ 1.37 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-Q2_K_L.gguf -O 'Q2_K_L-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        6)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-Q3_K_L.gguf \ 1.55 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-Q3_K_L.gguf -O 'Q3_K_L-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        7)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-Q3_K_XL.gguf \ 1.69 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-Q3_K_XL.gguf -O 'Q3_K_XL-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        8)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-Q4_K_L.gguf \ 1.85 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget hhttps://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-Q4_K_L.gguf -O 'Q4_K_L-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        9)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-Q4_K_M.gguf \ 1.71 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-Q4_K_M.gguf -O 'Q4_K_M-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        10)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-Q4_K_S.gguf \ 1.64 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-Q4_K_S.gguf -O 'Q4_K_S-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        11)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-Q5_K_L.gguf \ 2.07 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-Q5_K_L.gguf -O 'Q5_K_L-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        12)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-Q5_K_M.gguf \ 1.92 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-Q5_K_M.gguf -O 'Q5_K_M-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        13)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-Q5_K_S.gguf \ 1.88 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-Q5_K_S.gguf -O 'Q5_K_S-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        14)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-Q6_K.gguf \ 2.15 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-Q6_K.gguf -O 'Q6_K-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        15)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-Q6_K_L.gguf \ 2.29 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-Q6_K_L.gguf -O 'Q6_K_L-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        16)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-Q8_0.gguf \ 2.78 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-Q8_0.gguf -O 'Q8_0-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;
        17)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-2b-it-abliterated-f32.gguf \ 10.5 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-2b-it-abliterated-GGUF/resolve/main/gemma-2-2b-it-abliterated-f32.gguf -O 'f32-gemma-2-2b-it-abliterated.gguf' -q --show-progress
            cd ../..
            clear
        
          ;;
        1)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        255)
          clear
          ./data/data/com.termux/files/home/AltaeraAI/altaera-model.sh;;
        esac
            ;;

esac
