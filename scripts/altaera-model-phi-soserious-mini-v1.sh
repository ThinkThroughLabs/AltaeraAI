#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.1.0 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired Phi-SoSerious-Mini-V1-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "PhiSoSerious-Q4_K_M.gguf \ 2.39 GB"
         3 "PhiSoSerious-f16.gguf \ 7.64 GB")


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
            ./AltaeraAI/altaera-model.sh
	    ;;
        2)
            echo "You chose 'KPhiSoSerious-Q4_K_M.gguf \ 2.39 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/concedo/Phi-SoSerious-Mini-V1-GGUF/resolve/main/PhiSoSerious-Q4_K_M.gguf'
OUTPUT='Q4_K_M-PhiSoSerious.gguf'
wget -q --show-progress "$URL" -O "$OUTPUT" &
WGET_PID=$!

# Prompt user in foreground
echo -e "\nPress 'c' to cancel the download at any time."

# Read single character in a loop
while kill -0 "$WGET_PID" 2>/dev/null; do
    read -rsn1 key
    if [[ "$key" == "c" ]]; then
        kill -9 "$WGET_PID" 2>/dev/null

        # If the file exists, delete it and show merged message
        if [[ -f "$OUTPUT" ]]; then
            rm -f "$OUTPUT"
            echo -e "\nDownload cancelled and partial file deleted."
        else
            echo -e "\nDownload cancelled."
        fi

        break
    fi
done

# Wait to suppress possible "terminated" messages
wait "$WGET_PID" 2>/dev/null

            cd /root
            clear
            ;;
        3)
            echo "You chose 'PhiSoSerious-f16.gguf \ 7.64 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/concedo/Phi-SoSerious-Mini-V1-GGUF/resolve/main/PhiSoSerious-f16.gguf'
OUTPUT='f16-PhiSoSerious.gguf'
wget -q --show-progress "$URL" -O "$OUTPUT" &
WGET_PID=$!

# Prompt user in foreground
echo -e "\nPress 'c' to cancel the download at any time."

# Read single character in a loop
while kill -0 "$WGET_PID" 2>/dev/null; do
    read -rsn1 key
    if [[ "$key" == "c" ]]; then
        kill -9 "$WGET_PID" 2>/dev/null

        # If the file exists, delete it and show merged message
        if [[ -f "$OUTPUT" ]]; then
            rm -f "$OUTPUT"
            echo -e "\nDownload cancelled and partial file deleted."
        else
            echo -e "\nDownload cancelled."
        fi

        break
    fi
done

# Wait to suppress possible "terminated" messages
wait "$WGET_PID" 2>/dev/null

            cd /root
            clear
            ;;
esac
