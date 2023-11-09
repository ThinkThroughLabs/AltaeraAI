#!/bin/bash

dialog --title "Reinstall (fix) Altaera AI" \
--backtitle "AltaeraAI" \
--yesno "Are you sure you want to reinstall AltaeraAI? - Your conversations will not be deleted as they are saved in the browser cache. " 7 60

response=$?
case $response in
   
   0)   echo "Removing previous AltaeraAI files...";

{
proot-distro remove altaera

rm -rf 'AltaeraAI-tmp'
rm -rf 'AltaeraAI'
} &> /dev/null 2>&1;

mkdir 'AltaeraAI-tmp'
mkdir 'AltaeraAI'

cd 'AltaeraAI-tmp'
wget https://raw.githubusercontent.com/latestissue/AltaeraAI/main/scripts/altaera_reinstall.sh
chmod a+x 'altaera_reinstall.sh'
cd ..

bash 'data/data/com.termux/files/home/AltaeraAI-tmp/altaera_reinstall.sh'
;;

   1) bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh';;
   255) bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh';;
   esac
