cd '/root'
git clone https://github.com/SillyTavern/SillyTavern
npm install

if [ -d '/root/SillyTavern' ]
then

dialog --title "SillyTavern - Installation" \
        --backtitle "AltaeraAI - SillyTavern" \
        --yesno "SillyTavern was installed successfully! Would you like to launch it now?" 7 60

response=$?
case $response in

        0)      
        ./start.sh
          ;;
        1) exit
        ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;
        255) exit
        ./data/data/com.termux/files/home/AltaeraAI/altaera.sh;;

else

echo "There were problems installing SillyTavern. You can try to install it again, or wait until proper AltaeraAI fixes are implemented"

fi

esac
