git clone github.com/Cohee1207/SillyTavern
npm install

dialog --title "SillyTavern - Installation" \
        --backtitle "AltaeraAI - SillyTavern" \
        --yesno "SillyTavern was installed successfully! Would you like to launch it now?" 7 60

response=$?
case $response in

        0)      
        ./start.sh
        fi
          ;;
        1) ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
        255) ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
esac
