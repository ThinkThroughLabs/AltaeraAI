#!/bin/bash

HEIGHT=30
WIDTH=60
CHOICE_HEIGHT=7
BACKTITLE="AltaeraAI"
TITLE="Benvenuti!"
MENU="Cosa ti piacerebbe fare?"

OPTIONS=(1 "Avviare AltaeraAI [KoboldCpp]"
         2 "Controlla gli aggiornamenti [...]"
         3 "Aggiornamento della forza [...]"
         4 "Cambiare il modello di AI 🤖"
         5 "Cambiare la lingua 🌐"
         6 "ngrok Secure Tunnelling [...]"
         7 "AI Model Backup/Restore (/sdcard) [...]"
         8 "Reinstallare (riparare) AltaeraAI"
         9 "Disinstallare AltaeraAI"
         10 "Uscire")
         

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
            clear
            proot-distro login altaera -- ./altaera.sh &
            ;;
        2)
            clear
            './AltaeraAI/altaera-check_for_updates.sh'
            './AltaeraAI/altaera.sh'
            ;;
        3)
            clear
            './AltaeraAI/altaera-force_update.sh'
            './AltaeraAI/altaera.sh'
            ;;
        4)
            clear
            './AltaeraAI/altaera-model.sh'
            './AltaeraAI/altaera.sh'
            ;;
        5)
            clear
            './AltaeraAI/altaera-lang.sh'
            './AltaeraAI/altaera.sh'
            ;;
        6)
            clear
            './AltaeraAI/altaera-ngrok.sh'
            './AltaeraAI/altaera.sh'
            ;;
        7)
            clear
            './AltaeraAI/altaera-model_backup-restore.sh'
            './AltaeraAI/altaera.sh'
            ;;
        8)
            clear
            './AltaeraAI/altaera-reinstall.sh'
            ;;
        9)
            clear
            './AltaeraAI/altaera-uninstall.sh'
            ;;
        10)
            clear
            ;;
esac
