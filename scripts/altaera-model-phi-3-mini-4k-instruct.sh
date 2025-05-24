#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.1.0 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired Phi-3-mini-4k-instruct-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "phi-3-mini-4k-instruct.Q2_K.gguf \ 1.45 GB"
         3 "phi-3-mini-4k-instruct.Q3_K_L.gguf \ 2.05 GB"
         4 "phi-3-mini-4k-instruct.Q3_K_M.gguf \ 1.88 GB"
         5 "phi-3-mini-4k-instruct.Q3_K_S.gguf \ 1.68 GB"
         6 "phi-3-mini-4k-instruct.Q4_0.gguf \ 2.18 GB"
         7 "phi-3-mini-4k-instruct.Q4_1.gguf \ 2.41 GB"
         8 "phi-3-mini-4k-instruct.Q4_K.gguf \ 2.32 GB"
         9 "phi-3-mini-4k-instruct.Q4_K_M.gguf \ 2.32 GB"
         10 "phi-3-mini-4k-instruct.Q4_K_S.gguf \ 2.19 GB"
         11 "phi-3-mini-4k-instruct.Q5_0.gguf \ 2.64 GB"
         12 "phi-3-mini-4k-instruct.Q5_1.gguf \ 2.87 GB"
         13 "phi-3-mini-4k-instruct.Q5_K.gguf \ 2.72 GB"
         14 "phi-3-mini-4k-instruct.Q5_K_M.gguf \ 2.72 GB"
         15 "phi-3-mini-4k-instruct.Q5_K_S.gguf \ 2.64 GB"
         16 "phi-3-mini-4k-instruct.Q6_K.gguf \ 3.14 GB"
         17 "phi-3-mini-4k-instruct.Q8_0.gguf \ 4.06 GB"
         18 "phi-3-mini-4k-instruct.fp16.gguf \ 7.64 GB")


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
            echo "You chose 'phi-3-mini-4k-instruct.Q2_K.gguf \ 1.45 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q2_K.gguf'
OUTPUT='Q2_K.phi-3-mini-4k-instruct.gguf'
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
            echo "You chose 'phi-3-mini-4k-instruct.Q3_K_L.gguf \ 2.05 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q3_K_L.gguf'
OUTPUT='Q3_K_L.phi-3-mini-4k-instruct.gguf'
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
            echo "You chose 'phi-3-mini-4k-instruct.Q3_K_M.gguf \ 1.88 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q3_K_M.gguf'
OUTPUT='Q3_K_M.phi-3-mini-4k-instruct.gguf'
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
            echo "You chose 'phi-3-mini-4k-instruct.Q3_K_S.gguf \ 1.68 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q3_K_S.gguf'
OUTPUT='Q3_K_S.phi-3-mini-4k-instruct.gguf'
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
            echo "You chose 'phi-3-mini-4k-instruct.Q4_0.gguf \ 2.18 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q4_0.gguf'
OUTPUT='Q4_0.phi-3-mini-4k-instruct.gguf'
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
            echo "You chose 'phi-3-mini-4k-instruct.Q4_1.gguf \ 2.41 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q4_1.gguf'
OUTPUT='Q4_1.phi-3-mini-4k-instruct.gguf'
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
            echo "You chose 'phi-3-mini-4k-instruct.Q4_K.gguf \ 2.32 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q4_K.gguf'
OUTPUT='Q4_K.phi-3-mini-4k-instruct.gguf'
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
            echo "You chose 'phi-3-mini-4k-instruct.Q4_K_M.gguf \ 2.32 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q4_K_M.gguf'
OUTPUT='Q4_K_M.phi-3-mini-4k-instruct.gguf'
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
            echo "You chose 'phi-3-mini-4k-instruct.Q4_K_S.gguf \ 2.19 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q4_K_S.gguf'
OUTPUT='Q4_K_S.phi-3-mini-4k-instruct.gguf'
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
            echo "You chose 'phi-3-mini-4k-instruct.Q5_0.gguf \ 2.64 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q5_0.gguf'
OUTPUT='Q5_0.phi-3-mini-4k-instruct.gguf'
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
            echo "You chose 'phi-3-mini-4k-instruct.Q5_1.gguf \ 2.87 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q5_1.gguf'
OUTPUT='Q5_1.phi-3-mini-4k-instruct.gguf'
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
            echo "You chose 'phi-3-mini-4k-instruct.Q5_K.gguf \ 2.72 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q5_K.gguf'
OUTPUT='Q5_K.phi-3-mini-4k-instruct.gguf'
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
        14)
            echo "You chose 'phi-3-mini-4k-instruct.Q5_K_M.gguf \ 2.72 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q5_K_M.gguf'
OUTPUT='Q5_K_M.phi-3-mini-4k-instruct.gguf'
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
        15)
            echo "You chose 'phi-3-mini-4k-instruct.Q5_K_S.gguf \ 2.64 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q5_K_S.gguf'
OUTPUT='Q5_K_S.phi-3-mini-4k-instruct.gguf'
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
        16)
            echo "You chose 'phi-3-mini-4k-instruct.Q6_K.gguf \ 3.14 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q6_K.gguf'
OUTPUT='Q6_K.phi-3-mini-4k-instruct.gguf'
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
        17)
            echo "You chose 'phi-3-mini-4k-instruct.Q8_0.gguf \ 4.06 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.Q8_0.gguf'
OUTPUT='Q8_0.phi-3-mini-4k-instruct.gguf'
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
        18)
            echo "You chose 'phi-3-mini-4k-instruct.fp16.gguf \ 7.64 GB'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/SanctumAI/Phi-3-mini-4k-instruct-GGUF/resolve/main/phi-3-mini-4k-instruct.fp16.gguf'
OUTPUT='fp16.phi-3-mini-4k-instruct.gguf'
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
