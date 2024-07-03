#!/bin/bash

cd '/data/data/com.termux/files/home'

HEIGHT=25
WIDTH=60
CHOICE_HEIGHT=7
BACKTITLE="AltaeraAI - v5.3 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="Welcome!"
MENU="What would you like to do?"

OPTIONS=(1 "Start AltaeraAI [KoboldCpp v1.69]"
         2 "Check for updates [...]"
         3 "Force update [...]"
         4 "Changelog [...]"
         5 "Horde [KoboldCpp]"
         6 "Benchmark AI Models [KoboldCpp]"
         7 "Manage AI Models 🤖 [...]"
         8 "Change language 🌐"
         9 "Change KoboldCpp Settings [...]"
         10 "Change AltaeraAI Settings [...]"
         11 "ngrok Secure Tunnelling [...]"
         12 "Reinstall (fix) AltaeraAI [...]"
         13 "Uninstall AltaeraAI"
         14 "Customer Support [...]"
         15 "Visit altaera.ai [URL]"
         16 "Donate 💸 [URL]"
         17 "Exit")
         

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
            proot-distro login altaera -- ./altaera_pre-launch.sh
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
            './AltaeraAI/altaera-changelog.sh'
            './AltaeraAI/altaera.sh'
            ;;
        5)
            clear
            './AltaeraAI/altaera-horde.sh'
            './AltaeraAI/altaera.sh'
            ;;
        6)
            clear
            proot-distro login altaera -- ./benchmark.sh
            ;;
        7)
            clear
            './AltaeraAI/altaera-manage_models.sh'
            './AltaeraAI/altaera.sh'
            ;;
        8)
            clear
            './AltaeraAI/altaera-lang.sh'
            './AltaeraAI/altaera.sh'
            ;;
        9)
            clear
            './AltaeraAI/altaera-koboldcpp_settings.sh'
            './AltaeraAI/altaera.sh'
            ;;
        10)
            clear
            './AltaeraAI/altaera-settings.sh'
            './AltaeraAI/altaera.sh'
            ;;
        11)
            clear
            './AltaeraAI/altaera-ngrok.sh'
            './AltaeraAI/altaera.sh'
            ;;
        12)
            clear
            './AltaeraAI/altaera-reinstall.sh'
            ;;
        13)
            clear
            './AltaeraAI/altaera-uninstall.sh'
            ;;
        14)
            clear
            './AltaeraAI/altaera-customer_support.sh'
            ;;
        15)
            clear
            termux-open-url 'https://altaera.ai/'
            ;;
        16)
            clear
            termux-open-url 'https://altaera.ai/donate/'
            ;;
        17)
            clear
            exit
esac
