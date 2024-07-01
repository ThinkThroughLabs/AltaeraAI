#!/bin/bash

HEIGHT=20
WIDTH=40
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - KoboldCpp Settings"
TITLE="Context Size"
MENU="Choose the context size:"

OPTIONS=(1 "[...] Go back"
         2 "Enter value"
         3 "2048 [Default]"
         4 "512"
         5 "1024"
         6 "3072"
         7 "4096"
         8 "6144"
         9 "8192"
         10 "12288"
         11 "16384"
         12 "24576"
         13 "32768"
         14 "65536")


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
            exit
	    ;;
        2)
            cat altaera-koboldcpp_settings_contextsize.sh
            !/bin/bash

            # Redirecting dialog box output to a temporary stream
            exec 3>&1  # Save the place that stdout (1) points to
            result=$(dialog --title "Input Required" --inputbox "Enter a Context Size value:" 10 30 2>&1 >/dev/tty)
            exec 3>&-  # Close the temporary stream
	    
            if (($result >= 100)); then
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize '$result'' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "'$result'"!' 10 30
	    else
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Please enter the correct value! (>=100)' 10 30
	    fi
            ;;
        3)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 2048' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "2048"!' 10 30
            ;;
        4)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 512' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "512"!' 10 30
            ;;
        5)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 1024' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "1024"!' 10 30
            ;;
        6)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 3072' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "3072"!' 10 30
            ;;
        7)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 4096' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "4096"!' 10 30
            ;;
        8)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 6144' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "6144"!' 10 30
            ;;
        9)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 8192' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "8192"!' 10 30
            ;;
        10)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 12288' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "12288"!' 10 30
            ;;
        11)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 16384' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "16384"!' 10 30
            ;;
        12)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 24576' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "24576"!' 10 30
            ;;
        13)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 32768' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "32768"!' 10 30
            ;;
        14)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 65536' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Context Size was successfully changed to "65536"!' 10 30
            ;;
esac
