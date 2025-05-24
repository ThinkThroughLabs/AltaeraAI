#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.1.0 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired gemma-3-12b-it-abliterated-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "q2_k-gemma-3-12b-it-abliterated.gguf \ 4.77 GB"
         3 "q3_k_m-gemma-3-12b-it-abliterated.gguf \ 6.01 GB"
         4 "q4_k_m.gemma-3-12b-it-abliterated.gguf \ 7.30 GB"
         5 "q5_k_m.gemma-3-12b-it-abliterated.gguf \ 8.45 GB"
         6 "q6_k-gemma-3-12b-it-abliterated.gguf \ 9.66 GB"
         7 "q8_0-gemma-3-12b-it-abliterated.gguf \ 12.5 GB"
         8 "f16-gemma-3-12b-it-abliterated.gguf \ 23.5 GB")


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
            echo "You chose 'q2_k-gemma-3-12b-it-abliterated.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-Q2_K.gguf'
OUTPUT='q2_k-gemma-3-12b-it-abliterated.gguf'
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
            echo "You chose 'q3_k_m.gemma-3-12b-it-abliterated.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-Q2_K_L.gguf'
OUTPUT='q3_k_m.gemma-3-12b-it-abliterated.gguf'
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
        4)
            echo "You chose 'q4_k_m.gemma-3-12b-it-abliterated.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-Q3_K_M.gguf'
OUTPUT='q4_k_m.gemma-3-12b-it-abliterated.gguf'
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
        5)
            echo "You chose 'q5_k_m.gemma-3-12b-it-abliterated.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-Q3_K_S.gguf'
OUTPUT='q5_k_m.gemma-3-12b-it-abliterated.gguf'
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
        6)
            echo "You chose 'q6_k-gemma-3-12b-it-abliterated.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-IQ4_NL.gguf'
OUTPUT='q6_k-gemma-3-12b-it-abliterated.gguf'
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
        7)
            echo "You chose 'q8_0-gemma-3-12b-it-abliterated.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-IQ4_XS.gguf'
OUTPUT='q8_0-gemma-3-12b-it-abliterated.gguf'
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

        8)
            echo "You chose 'f16-gemma-3-12b-it-abliterated.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-abliterated-GGUF/resolve/main/gemma-3-12b-it-abliterated-Q4_K_M.gguf'
OUTPUT='f16-gemma-3-12b-it-abliterated.gguf'
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
