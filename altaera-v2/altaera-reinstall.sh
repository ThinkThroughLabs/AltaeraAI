#!/bin/bash

HEIGHT=20
WIDTH=40
CHOICE_HEIGHT=6
BACKTITLE="AltaeraAI"
TITLE="Reinstalling AltaeraAI"
MENU="Choose your desired method:"

OPTIONS=(1 "Reinstall without re-downloading the AI model (faster)"
         2 "Reinstall everything, including the AI model (slower)")


CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $response in
   1)   dialog --title "Reinstall (fix) Altaera AI" \
--backtitle "AltaeraAI" \
--yesno "Are you sure you want to reinstall AltaeraAI? - Your conversations will not be deleted as they are saved in the browser cache. " 7 60

response=$?
case $response in
   
   proot-distro remove altaera
        cd '/data/data/com.termux/files/home'
        rm -rf 'bash.bashrc'
        rm -rf 'altaera-lang.sh'
        rm -rf 'altaera-update.sh'
        rm -rf 'altaera_install_pt-2.sh'
        rm -rf 'altaera-model.sh'
        rm -rf 'altaera.sh'
        rm -rf 'install'
        rm -rf 'install.sh'
        rm -rf 'altaera-reinstall.sh'
        rm -rf 'altaera-uninstall.sh'
        mv '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera/model.bin' '/data/data/com.termux/files/home/AltaeraAI-temp/model.bin'
        clear
        wget https://raw.githubusercontent.com/latestissue/altaera-packages.github.io/main/altaera-v2/altaera_install_pt-2.sh -q --show-progress
        chmod a+x 'altaera_install_pt-2.sh'
        bash 'altaera_install_pt-2.sh'
        cd $PREFIX/etc/proot-distro
        wget https://raw.githubusercontent.com/latestissue/altaera-packages.github.io/main/altaera-v2/altaera-debian/proot/altaera.sh -q --show-progress
        proot-distro install altaera
        mv '/data/data/com.termux/files/home/AltaeraAI-temp/model.bin' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera/model.bin'
        proot-distro login altaera;;
   1) ./altaera.sh;;
   255) ./altaera.sh;;

   2)   dialog --title "Reinstall (fix) Altaera AI" \
--backtitle "AltaeraAI" \
--yesno "Are you sure you want to reinstall AltaeraAI? - Your conversations will not be deleted as they are saved in the browser cache. " 7 60

response=$?
case $response in
   
   proot-distro remove altaera
        cd '/data/data/com.termux/files/home'
        rm -rf 'bash.bashrc'
        rm -rf 'altaera-lang.sh'
        rm -rf 'altaera-update.sh'
        rm -rf 'altaera_install_pt-2.sh'
        rm -rf 'altaera-model.sh'
        rm -rf 'altaera.sh'
        rm -rf 'install'
        rm -rf 'install.sh'
        rm -rf 'altaera-reinstall.sh'
        rm -rf 'altaera-uninstall.sh'
        clear
        wget https://raw.githubusercontent.com/latestissue/altaera-packages.github.io/main/altaera-v2/altaera_install_pt-2.sh -q --show-progress
        chmod a+x 'altaera_install_pt-2.sh'
        bash 'altaera_install_pt-2.sh'
        mkdir 'AltaeraAI-temp'
        wget https://raw.githubusercontent.com/latestissue/AltaeraAI/main/altaera-v2/altaera_install_model.sh
        chmod a+x 'altaera_install_model.sh'
        bash 'altaera_install_model.sh'
        cd $PREFIX/etc/proot-distro
        wget https://raw.githubusercontent.com/latestissue/altaera-packages.github.io/main/altaera-v2/altaera-debian/proot/altaera.sh -q --show-progress
        proot-distro install altaera
        mv '/data/data/com.termux/files/home/AltaeraAI-temp/model.bin' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/koboldcpp-altaera'
        proot-distro login altaera;;
   1) ./altaera.sh;;
   255) ./altaera.sh;;
esac
