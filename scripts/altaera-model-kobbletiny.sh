#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.1.2 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired KobbleTinyV2-1.1B-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "KobbleTiny-Q4_K.gguf \ 668 MB"
         3 "KobbleTiny-Q6_K.gguf \ 903 MB"
         4 "KobbleTiny-Q8_0.gguf \ 1.17 GB"
         5 "KobbleTiny-f16.gguf \ 2.2 GB")


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
            echo "You chose 'KobbleTiny-Q4_K.gguf \ 668 MB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/concedo/KobbleTinyV2-1.1B-GGUF/resolve/main/KobbleTiny-Q4_K.gguf'
OUTPUT='Q4_K-KobbleTiny.gguf'
wget -q --show-progress "$URL" -O "$OUTPUT" &
WGET_PID=$!

# Prompt user in foreground
echo -e "\nPress 'c' to cancel the download at any time.
"

CANCELLED=false

# Read single character in a loop
while kill -0 "$WGET_PID" 2>/dev/null; do
    read -rsn1 -t 1 key  # Add -t 1 to allow loop to check WGET_PID regularly
    if [[ "$key" == "c" ]]; then
        kill -9 "$WGET_PID" 2>/dev/null
        CANCELLED=true
        if [[ -f "$OUTPUT" ]]; then
            rm -f "$OUTPUT"
            echo -e "\n❌ Download cancelled — partial file deleted."
        else
            echo -e "\n❌ Download cancelled."
        fi
        break
    fi
done

# Wait to suppress possible "terminated" messages
wait "$WGET_PID" 2>/dev/null

if [[ "$CANCELLED" == false ]]; then
    echo -e "\n✅ Download complete!"
    sleep 2  # Optional pause to show success message
fi

            cd /root
            clear
            ;;
        3)
            echo "You chose 'KobbleTiny-Q6_K.gguf \ 903 MB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/concedo/KobbleTinyV2-1.1B-GGUF/resolve/main/KobbleTiny-Q6_K.gguf'
OUTPUT='Q6_K-KobbleTiny.gguf'
wget -q --show-progress "$URL" -O "$OUTPUT" &
WGET_PID=$!

# Prompt user in foreground
echo -e "\nPress 'c' to cancel the download at any time.
"

CANCELLED=false

# Read single character in a loop
while kill -0 "$WGET_PID" 2>/dev/null; do
    read -rsn1 -t 1 key  # Add -t 1 to allow loop to check WGET_PID regularly
    if [[ "$key" == "c" ]]; then
        kill -9 "$WGET_PID" 2>/dev/null
        CANCELLED=true
        if [[ -f "$OUTPUT" ]]; then
            rm -f "$OUTPUT"
            echo -e "\n❌ Download cancelled — partial file deleted."
        else
            echo -e "\n❌ Download cancelled."
        fi
        break
    fi
done

# Wait to suppress possible "terminated" messages
wait "$WGET_PID" 2>/dev/null

if [[ "$CANCELLED" == false ]]; then
    echo -e "\n✅ Download complete!"
    sleep 2  # Optional pause to show success message
fi

            cd /root
            clear
            ;;
        4)
            echo "You chose 'KobbleTiny-Q8_0.gguf \ 1.17 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/concedo/KobbleTinyV2-1.1B-GGUF/resolve/main/KobbleTiny-Q8_0.gguf'
OUTPUT='Q8_0-KobbleTiny.gguf'
wget -q --show-progress "$URL" -O "$OUTPUT" &
WGET_PID=$!

# Prompt user in foreground
echo -e "\nPress 'c' to cancel the download at any time.
"

CANCELLED=false

# Read single character in a loop
while kill -0 "$WGET_PID" 2>/dev/null; do
    read -rsn1 -t 1 key  # Add -t 1 to allow loop to check WGET_PID regularly
    if [[ "$key" == "c" ]]; then
        kill -9 "$WGET_PID" 2>/dev/null
        CANCELLED=true
        if [[ -f "$OUTPUT" ]]; then
            rm -f "$OUTPUT"
            echo -e "\n❌ Download cancelled — partial file deleted."
        else
            echo -e "\n❌ Download cancelled."
        fi
        break
    fi
done

# Wait to suppress possible "terminated" messages
wait "$WGET_PID" 2>/dev/null

if [[ "$CANCELLED" == false ]]; then
    echo -e "\n✅ Download complete!"
    sleep 2  # Optional pause to show success message
fi

            cd /root
            clear
            ;;
        5)
            echo "You chose 'KobbleTiny-f16.gguf \ 2.2 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/concedo/KobbleTinyV2-1.1B-GGUF/resolve/main/KobbleTiny-f16.gguf'
OUTPUT='f16-KobbleTiny.gguf'
wget -q --show-progress "$URL" -O "$OUTPUT" &
WGET_PID=$!

# Prompt user in foreground
echo -e "\nPress 'c' to cancel the download at any time.
"

CANCELLED=false

# Read single character in a loop
while kill -0 "$WGET_PID" 2>/dev/null; do
    read -rsn1 -t 1 key  # Add -t 1 to allow loop to check WGET_PID regularly
    if [[ "$key" == "c" ]]; then
        kill -9 "$WGET_PID" 2>/dev/null
        CANCELLED=true
        if [[ -f "$OUTPUT" ]]; then
            rm -f "$OUTPUT"
            echo -e "\n❌ Download cancelled — partial file deleted."
        else
            echo -e "\n❌ Download cancelled."
        fi
        break
    fi
done

# Wait to suppress possible "terminated" messages
wait "$WGET_PID" 2>/dev/null

if [[ "$CANCELLED" == false ]]; then
    echo -e "\n✅ Download complete!"
    sleep 2  # Optional pause to show success message
fi

            cd /root
            clear
            ;;
esac
