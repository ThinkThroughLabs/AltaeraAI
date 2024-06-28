#!/bin/bash

HEIGHT=20
WIDTH=40
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - KoboldCpp Settings"
TITLE="Context Size"
MENU="Choose the context size:"

OPTIONS=(1 "[...] Go Back"
         2 "2048 [Default]"
         3 "512"
         4 "1024"
         5 "3072"
         6 "4096"
         7 "6144"
         8 "8192"
         9 "12288"
         10 "16384"
         11 "24576"
         12 "32768"
         13 "65536")


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
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 2048' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "Hello" --msgbox 'Context Size was successfully changed to "2048"' 6 20
            ;;
        3)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 512' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "Hello" --msgbox 'Context Size was successfully changed to "512"' 6 20
            ;;
        4)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 1024' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "Hello" --msgbox 'Context Size was successfully changed to "1024"' 6 20
            ;;
        5)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 3072' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "Hello" --msgbox 'Context Size was successfully changed to "3072"' 6 20
            ;;
        6)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 4096' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "Hello" --msgbox 'Context Size was successfully changed to "4096"' 6 20
            ;;
        7)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 6144' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "Hello" --msgbox 'Context Size was successfully changed to "6144"' 6 20
            ;;
        8)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 8192' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "Hello" --msgbox 'Context Size was successfully changed to "8192"' 6 20
            ;;
        9)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 12288' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "Hello" --msgbox 'Context Size was successfully changed to "12288"' 6 20
            ;;
        10)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 16384' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "Hello" --msgbox 'Context Size was successfully changed to "16384"' 6 20
            ;;
        11)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 24576' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "Hello" --msgbox 'Context Size was successfully changed to "24576"' 6 20
            ;;
        12)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 32768' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "Hello" --msgbox 'Context Size was successfully changed to "32768"' 6 20
            ;;
        13)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--contextsize/c\--contextsize 65536' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "Hello" --msgbox 'Context Size was successfully changed to "65536"' 6 20
            ;;
esac
