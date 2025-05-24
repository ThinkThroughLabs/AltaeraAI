#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.1.0 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired Vicuna-7B-v1.5 model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "vicuna-7b-v1.5.Q2_K.gguf \ 2.83 GB"
         3 "vicuna-7b-v1.5.Q3_K_L.gguf \ 3.6 GB"
         4 "vicuna-7b-v1.5.Q3_K_M.gguf \ 3.3 GB"
         5 "vicuna-7b-v1.5.Q3_K_S.gguf \ 2.95 GB"
         6 "vicuna-7b-v1.5.Q4_0.gguf \ 3.83 GB"
         7 "vicuna-7b-v1.5.Q4_K_M.gguf \ 4.08 GB"
         8 "vicuna-7b-v1.5.Q4_K_S.gguf \ 3.86 GB"
         9 "vicuna-7b-v1.5.Q5_0.gguf \ 4.65 GB"
         10 "vicuna-7b-v1.5.Q5_K_M.gguf \ 4.78 GB"
         11 "vicuna-7b-v1.5.Q5_K_S.gguf \ 4.65 GB"
         12 "vicuna-7b-v1.5.Q6_K.gguf \ 5.53 GB"
         13 "vicuna-7b-v1.5.Q8_0.gguf \ 7.16 GB")


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
            echo "You chose 'vicuna-7b-v1.5.Q2_K.gguf \ 2.83 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF/resolve/main/vicuna-7b-v1.5.Q2_K.gguf'
OUTPUT='5.Q2_K.vicuna-7b-v1.gguf'
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
            echo "vicuna-7b-v1.5.Q3_K_L.gguf \ 3.6 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF/resolve/main/vicuna-7b-v1.5.Q3_K_L.gguf'
OUTPUT='Q3_K_L.vicuna-7b-v1.5.gguf'
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
            echo "vicuna-7b-v1.5.Q3_K_M.gguf \ 3.3 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF/resolve/main/vicuna-7b-v1.5.Q3_K_M.gguf'
OUTPUT='Q3_K_M.vicuna-7b-v1.5.gguf'
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
            echo "vicuna-7b-v1.5.Q3_K_S.gguf \ 2.95 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF/resolve/main/vicuna-7b-v1.5.Q3_K_S.gguf'
OUTPUT='Q3_K_S.vicuna-7b-v1.5.gguf'
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
            echo "You chose 'vicuna-7b-v1.5.Q4_0.gguf \ 3.83 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF/resolve/main/vicuna-7b-v1.5.Q4_0.gguf'
OUTPUT='Q4_0.vicuna-7b-v1.5.gguf'
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
            echo "You chose 'vicuna-7b-v1.5.Q4_K_M.gguf \ 4.08 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF/resolve/main/vicuna-7b-v1.5.Q4_K_M.gguf'
OUTPUT='Q4_K_M.vicuna-7b-v1.5.gguf'
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
            echo "You chose 'vicuna-7b-v1.5.Q4_K_S.gguf \ 3.86 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF/resolve/main/vicuna-7b-v1.5.Q4_K_S.gguf'
OUTPUT='Q4_K_S.vicuna-7b-v1.5.gguf'
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
        9)
            echo "You chose 'vicuna-7b-v1.5.Q5_0.gguf \ 4.65 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF/resolve/main/vicuna-7b-v1.5.Q5_0.gguf'
OUTPUT='Q5_0.vicuna-7b-v1.5.gguf'
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
        10)
            echo "You chose 'vicuna-7b-v1.5.Q5_K_M.gguf \ 4.78 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF/resolve/main/vicuna-7b-v1.5.Q5_K_M.gguf'
OUTPUT='Q5_K_M.vicuna-7b-v1.5.gguf'
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

        11)
            echo "You chose 'vicuna-7b-v1.5.Q5_K_S.gguf \ 4.65 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF/resolve/main/vicuna-7b-v1.5.Q5_K_S.gguf'
OUTPUT='Q5_K_S.vicuna-7b-v1.5.gguf'
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

        12)
            echo "You chose 'vicuna-7b-v1.5.Q6_K.gguf \ 5.53 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF/resolve/main/vicuna-7b-v1.5.Q6_K.gguf'
OUTPUT='Q6_K.vicuna-7b-v1.5.gguf'
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

        13)
            echo "You chose 'vicuna-7b-v1.5.Q8_0.gguf \ 7.16 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/vicuna-7B-v1.5-GGUF/resolve/main/vicuna-7b-v1.5.Q8_0.gguf'
OUTPUT='Q8_0.vicuna-7b-v1.5.gguf'
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
