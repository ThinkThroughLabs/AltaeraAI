#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=6
BACKTITLE="AltaeraAI Installation - Method"
TITLE="Please choose your method of installing AltaeraAI"
MENU="Which installation method do you prefer?:"

OPTIONS=(1 "Install pre-packaged PD (Fast) - [Default]"
         2 "Install PD from scratch (Slow)")
         
         
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
        {
        wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-3-very_fast.sh -O 'altaera_install_pt-3.sh'
        chmod a+x 'altaera_install_pt-3.sh'
        } &> /dev/null 2>&1;
        bash 'altaera_install_pt-3.sh'
        ;;
        
        2)
        cd $PREFIX/etc/proot-distro
        rm 'altaera.sh'
        wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/rootfs/altaera-fast.sh -O 'altaera.sh' -q --show-progress
        
        ;;
        
        esac
