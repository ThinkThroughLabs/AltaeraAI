#!/bin/bash

if [ -d /root/kcpp-ae ] && [ -d /root/.ollama ]
then

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - AI Back-ends' Management"
TITLE="AI Back-ends"
MENU="What would you like to do?:"

OPTIONS=(1 "[...] Go Back"
         2 "KoboldCpp (Installed) [Uninstall]"
         3 "ollama (Installed) [Uninstall]")


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
            exit
            ;;
        2)
            rm -rf '/root/kcpp-ae'
            ;;
        3)
            rm -rf '/root/.ollama'
            ;;

            esac

elif [ ! -d /root/kcpp-ae ] && [ ! -d /root/.ollama ]
then

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - AI Back-ends' Management"
TITLE="AI Back-ends"
MENU="What would you like to do?:"

OPTIONS=(1 "[...] Go Back"
         2 "KoboldCpp (Not Installed) [Install]"
         3 "ollama (Not Installed) [Install]")


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
            exit
            ;;
        2)
          ###  rm -rf '/root/kcpp-ae'
            ;;
        3)
        ###    rm -rf '/root/.ollama'
            ;;

            esac

elif [ -d /root/kcpp-ae ] && [ ! -d /root/.ollama ]
then

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - AI Back-ends' Management"
TITLE="AI Back-ends"
MENU="What would you like to do?:"

OPTIONS=(1 "[...] Go Back"
         2 "KoboldCpp (Installed) [Uninstall]"
         3 "ollama (Not Installed) [Install]")


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
            exit
            ;;
        2)
            rm -rf '/root/kcpp-ae'
            ;;
        3)
          ###  rm -rf '/root/.ollama'
            ;;

esac

elif [ ! -d /root/kcpp-ae ] && [ ! -d /root/.ollama ]
then

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - AI Back-ends' Management"
TITLE="AI Back-ends"
MENU="What would you like to do?:"

OPTIONS=(1 "[...] Go Back"
         2 "KoboldCpp (Not Installed) [Install]"
         3 "ollama (Installed) [Uninstall]")


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
            exit
            ;;
        2)
       ###     rm -rf '/root/kcpp-ae'
            ;;
        3)
            rm -rf '/root/.ollama'
            ;;
esac

fi
