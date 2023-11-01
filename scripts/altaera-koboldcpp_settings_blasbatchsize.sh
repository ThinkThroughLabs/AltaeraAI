#!/bin/bash

HEIGHT=30
WIDTH=40
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - KoboldCpp Settings"
TITLE="Blas Batch Size"
MENU="Choose the blas batch size:"

OPTIONS=(1 "2048 [Default]"
         2 "1"
         3 "32"
         4 "64"
         5 "128"
         6 "256"
         7 "512"
         8 "1024")


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
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/^--blasbatchsize/d' altaera.sh
            echo "--blasbatchsize 2048" >> altaera.sh
            cd '/data/data/com.termux/files/home'
            ;;
        2)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/^--blasbatchsize/d' altaera.sh
            echo "--blasbatchsize 1" >> altaera.sh
            cd '/data/data/com.termux/files/home'
            ;;
        3)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/^--blasbatchsize/d' altaera.sh
            echo "--blasbatchsize 32" >> altaera.sh
            cd '/data/data/com.termux/files/home'
            ;;
        4)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/^--blasbatchsize/d' altaera.sh
            echo "--blasbatchsize 64" >> altaera.sh
            cd '/data/data/com.termux/files/home'
            ;;
        5)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/^--blasbatchsize/d' altaera.sh
            echo "--blasbatchsize 128" >> altaera.sh
            cd '/data/data/com.termux/files/home'
            ;;
        6)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/^--blasbatchsize/d' altaera.sh
            echo "--blasbatchsize 256" >> altaera.sh
            cd '/data/data/com.termux/files/home'
            ;;
        7)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/^--blasbatchsize/d' altaera.sh
            echo "--blasbatchsize 512" >> altaera.sh
            cd '/data/data/com.termux/files/home'
            ;;
        8)
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/^--blasbatchsize/d' altaera.sh
            echo "--blasbatchsize 1024" >> altaera.sh
            cd '/data/data/com.termux/files/home'
            ;;
esac