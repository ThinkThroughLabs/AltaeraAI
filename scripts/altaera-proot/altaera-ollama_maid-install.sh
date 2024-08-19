#!/bin/bash

dialog --title "Installing Maid" \
        --backtitle "AltaeraAI - ollama Official Models: Front-end" \
        --yesno "Would you like to download and install Maid [download source: F-Droid repositories]?" 7 60

response=$?
case $response in

        0)  
        clear
        echo "We will download and install Maid on your device. Once it's installed, please open the app, then expand the Back-end option on top of the interface and choose 'Ollama' to proceed"
        echo "Downloading and installing Maid in:"
        echo "6..."
        wait 1
        echo "5..."
        wait 1
        echo "4..."
        wait 1
        echo "3..."
        wait 1
        echo "2..."
        wait 1
        echo "1..."
        wait 1
        echo "Downloading Maid..."
        {
        cd '/sdcard/Download'
        } &> /dev/null 2>&1;
        wget https://f-droid.org/repo/com.danemadsen.maid_16972.apk -q --show-progress
        {
        chmod a+x 'com.danemadsen.maid_16972.apk'
        value="true"; key="allow-external-apps"; file="/data/data/com.termux/files/home/.termux/termux.properties"; mkdir -p "$(dirname "$file")"; chmod 700 "$(dirname "$file")"; if ! grep -E '^'"$key"'=.*' $file &>/dev/null; then [[ -s "$file" && ! -z "$(tail -c 1 "$file")" ]] && newline=$'\n' || newline=""; echo "$newline$key=$value" >> "$file"; else sed -i'' -E 's/^'"$key"'=.*/'"$key=$value"'/' $file; fi
         } &> /dev/null 2>&1;
         termux-open 'com.danemadsen.maid_16972.apk'
          ;;
        1) ./altaera.sh;;
        255) ./altaera.sh;;
esac
