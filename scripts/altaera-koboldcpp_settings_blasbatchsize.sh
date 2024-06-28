#!/bin/bash

HEIGHT=20
WIDTH=40
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - KoboldCpp Settings"
TITLE="Blas Batch Size"
MENU="Choose the blas batch size:"

OPTIONS=(1 "[...] Go Back"
         2 "2048 [Default]"
	 3 "-1 [Good for low RAM]"
         4 "1"
         5 "32"
         6 "64"
         7 "128"
         8 "256"
         9 "512"
         10 "1024")


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
            sed -i '/--blasbatchsize/c\--blasbatchsize 2048 \\' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Blas Batch Size was successfully changed to "2048"!' 10 30
            ;;
        3)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--blasbatchsize/c\--blasbatchsize -1 \\' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Blas Batch Size was successfully changed to "-1"!' 10 30
            ;;
        4)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--blasbatchsize/c\--blasbatchsize 1 \\' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Blas Batch Size was successfully changed to "1"!' 10 30
            ;;
        5)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--blasbatchsize/c\--blasbatchsize 32 \\' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Blas Batch Size was successfully changed to "32"!' 10 30
            ;;
        6)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--blasbatchsize/c\--blasbatchsize 64 \\' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Blas Batch Size was successfully changed to "64"!' 10 30
            ;;
        7)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--blasbatchsize/c\--blasbatchsize 128 \\' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Blas Batch Size was successfully changed to "128"!' 10 30
            ;;
        8)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--blasbatchsize/c\--blasbatchsize 256 \\' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Blas Batch Size was successfully changed to "256"!' 10 30
            ;;
        9)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--blasbatchsize/c\--blasbatchsize 512 \\' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Blas Batch Size was successfully changed to "512"!' 10 30
            ;;
        10)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--blasbatchsize/c\--blasbatchsize 1024 \\' altaera.sh
            cd '/data/data/com.termux/files/home'
	    dialog --title "AltaeraAI - KoboldCpp Settings" --msgbox 'Blas Batch Size was successfully changed to "1024"!' 10 30
            ;;
esac
