#!/bin/bash

dialog --title "PRoot Distro installation failure" \
        --backtitle "AltaeraAI - Installation" \
        --yesno "Would you like to retry the PRoot Distro environment installation?" 7 60

response=$?
case $response in

        0)      
        clear
        ;;
        1)
        exit
        clear
        ;;
        255)
        exit
        clear
        ;;
esac

echo "The PRoot Distro environment failed to install. Retrying in 5 seconds...

[to cancel, press Ctrl+C]
"
echo "10..."
sleep 1
echo "9..."
sleep 1
echo "8..."
sleep 1
echo "7..."
sleep 1
echo "6..."
sleep 1
echo "5..."
sleep 1

clear

rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-3.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-4.sh'
rm -rf '/data/data/com.termux/files/home/altaera-install_method.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
clear
proot-distro install altaera
