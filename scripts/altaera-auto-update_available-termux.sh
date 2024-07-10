#!/bin/bash

dialog --title "AltaeraAI - Automatic update checking" \
--backtitle "AltaeraAI" \
--yesno "There is a Termux update available. Would you like to update now?" 7 60

response=$?
case $response in
   0) bash 'AltaeraAI/altaera_update-termux.sh';;
    
   1) bash '/data/data/com.termux/files/home/AltaeraAI/altaera_no-check.sh';;
   
   255) bash '/data/data/com.termux/files/home/AltaeraAI/altaera_no-check.sh';;
esac
