#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v5.7.4.1 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired gemma-2-9b-it-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "Gemma Terms of Use [URL] - [Must Read Before]"
         3 "gemma-2-9b-it-IQ2_M.gguf \ 3.43 GB"
         4 "gemma-2-9b-it-IQ2_S.gguf \ 3.21 GB"
         5 "gemma-2-9b-it-IQ2_XS.gguf \ 3.07 GB"
         6 "gemma-2-9b-it-IQ3_M.gguf \ 4.49 GB"
         7 "gemma-2-9b-it-IQ3_XS.gguf \ 4.14 GB"
         8 "gemma-2-9b-it-IQ3_XXS.gguf \ 3.8 GB"
         9 "gemma-2-9b-it-IQ4_XS.gguf \ 5.18 GB"
         10 "gemma-2-9b-it-Q2_K.gguf \ 3.81 GB"
         11 "gemma-2-9b-it-Q2_K_L.gguf \ 4.03 GB"
         12 "gemma-2-9b-it-Q3_K_L-Q8.gguf \ 5.35 GB"
         13 "gemma-2-9b-it-Q3_K_L.gguf \ 5.13 GB"
         14 "gemma-2-9b-it-Q3_K_M.gguf \ 4.76 GB"
         15 "gemma-2-9b-it-Q3_K_S.gguf \ 4.34 GB"
         16 "gemma-2-9b-it-Q3_K_XL.gguf \ 5.35 GB"
         17 "gemma-2-9b-it-Q4_K_L.gguf \ 5.98 GB"
         18 "gemma-2-9b-it-Q4_K_M.gguf \ 5.76 GB"
         19 "gemma-2-9b-it-Q4_K_S.gguf \ 5.48 GB"
         20 "gemma-2-9b-it-Q5_K_L.gguf \ 6.87 GB"
         21 "gemma-2-9b-it-Q5_K_M.gguf \ 6.65 GB"
         22 "gemma-2-9b-it-Q5_K_S.gguf \ 6.48 GB"
         23 "gemma-2-9b-it-Q6_K-Q8.gguf \ 7.81 GB"
         24 "gemma-2-9b-it-Q6_K-f32.gguf \ 10.5 GB"
         25 "gemma-2-9b-it-Q6_K.gguf \ 7.59 GB"
         26 "gemma-2-9b-it-Q6_K_L.gguf \ 7.81 GB"
         27 "gemma-2-9b-it-Q8_0.gguf \ 9.83 GB"
         28 "gemma-2-9b-it-Q8_0_L.gguf \ 10.7 GB")


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
                    echo "You chose 'gemma-2-9b-it-IQ2_M.gguf \ 3.43 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-IQ2_M.gguf -O 'IQ2_M-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-IQ2_S.gguf \ 3.21 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-IQ2_S.gguf -O 'IQ2_S-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-IQ2_XS.gguf \ 3.07 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-IQ2_XS.gguf -O 'IQ2_XS-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-IQ3_M.gguf \ 4.49 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-IQ3_M.gguf -O 'IQ3_M-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-IQ3_XS.gguf \ 4.14 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-IQ3_XS.gguf -O 'IQ3_XS-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-IQ3_XXS.gguf \ 3.8 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-IQ3_XXS.gguf -O 'IQ3_XXS-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-IQ4_XS.gguf \ 5.18 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-IQ4_XS.gguf -O 'IQ4_XS-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-Q2_K.gguf \ 3.81 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q2_K.gguf -O 'Q2_K-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-Q2_K_L.gguf \ 4.03 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q2_K_L.gguf -O 'Q2_K_L-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-Q3_K_L-Q8.gguf \ 5.35 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q3_K_L-Q8.gguf -O 'Q3_K_L-Q8-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-Q3_K_L.gguf \ 5.13 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q3_K_L.gguf -O 'Q3_K_L-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-Q3_K_M.gguf \ 4.76 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q3_K_M.gguf -O 'Q3_K_M-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-Q3_K_S.gguf \ 4.34 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q3_K_S.gguf -O 'Q3_K_S-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-Q3_K_XL.gguf \ 5.35 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q3_K_XL.gguf -O 'Q3_K_XL-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
                    echo "You chose 'gemma-2-9b-it-Q4_K_L.gguf \ 5.98 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q4_K_L.gguf -O 'Q4_K_L-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
        18)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-9b-it-Q4_K_M.gguf \ 5.76 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q4_K_M.gguf -O 'Q4_K_M-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
        19)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-9b-it-Q4_K_S.gguf \ 5.48 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q4_K_S.gguf -O 'Q4_K_S-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
        20)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-9b-it-Q5_K_L.gguf \ 6.87 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q5_K_L.gguf -O 'Q5_K_L-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
        21)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-9b-it-Q5_K_M.gguf \ 6.65 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q5_K_M.gguf -O 'Q5_K_M-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
        22)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-9b-it-Q5_K_S.gguf \ 6.48 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q5_K_S.gguf -O 'Q5_K_S-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
        23)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-9b-it-Q6_K-Q8.gguf \ 7.81 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q6_K-Q8.gguf -O 'Q6_K-Q8-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
        24)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-9b-it-Q6_K-f32.gguf \ 10.5 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q6_K-f32.gguf -O 'Q6_K-f32-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
        25)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-9b-it-Q6_K.gguf \ 7.59 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q6_K.gguf -O 'Q6_K-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
        26)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-9b-it-Q6_K_L.gguf \ 7.81 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q6_K_L.gguf -O 'Q6_K_L-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
        27)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-9b-it-Q8_0.gguf \ 9.83 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q8_0.gguf -O 'Q8_0-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
        28)
            dialog --title "Gemma-2-9b-it-GGUF " \
        --backtitle "AltaeraAI - Notice" \
        --yesno "Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms

By confirming, you are stating that you accept the Terms of Use provided in the previous window, as well as the Use Restrictions found in Section 3.2 of the attached URL link" 10 60

response=$?
case $response in

        0)      
                    clear
                    echo "You chose 'gemma-2-9b-it-Q8_0_L.gguf \ 10.7 GB'
                        
            To abort download, press 'Ctrl+C'
            [don't forget to delete the file afterwards]
            
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            rm -rf 'RWKV-model.bin'
            rm -rf 'model.bin'
            wget https://huggingface.co/bartowski/gemma-2-9b-it-GGUF/resolve/main/gemma-2-9b-it-Q8_0_L.gguf -O 'Q8_0_L-gemma-2-9b-it.gguf' -q --show-progress
            cd /root
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
