#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.1.0 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired Llama-2-7B-Chat-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "llama-2-7b-chat.Q2_K.gguf \ 2.83 GB"
         3 "llama-2-7b-chat.Q3_K_L.gguf \ 3.6 GB"
         4 "llama-2-7b-chat.Q3_K_M.gguf \ 3.3 GB"
         5 "llama-2-7b-chat.Q3_K_S.gguf \ 2.95 GB"
         6 "llama-2-7b-chat.Q4_0.gguf \ 3.83 GB"
         7 "llama-2-7b-chat.Q4_K_M.gguf \ 4.08 GB"
         8 "llama-2-7b-chat.Q4_K_S.gguf \ 3.86 GB"
         9 "llama-2-7b-chat.Q5_0.gguf \ 4.65 GB"
         10 "llama-2-7b-chat.Q5_K_M.gguf \ 4.78 GB"
         11 "llama-2-7b-chat.Q5_K_S.gguf \ 4.65 GB"
         12 "llama-2-7b-chat.Q6_K.gguf \ 5.53 GB"
         13 "llama-2-7b-chat.Q8_0.gguf \ 7.16 GB")


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
            echo "You chose 'Q2_K-llama-2-7b-chat'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q2_K.gguf'
OUTPUT='llama-2-7b-chat.Q2_K.gguf'
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
            echo "You chose 'Q3_K_L-llama-2-7b-chat'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q3_K_L.gguf'
OUTPUT='llama-2-7b-chat.Q3_K_L.gguf'
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
            echo "You chose 'Q3_K_M-llama-2-7b-chat'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q3_K_M.gguf'
OUTPUT='Q3_K_M-llama-2-7b-chat.gguf'
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
            echo "You chose 'Q3_K_S-llama-2-7b-chat'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q3_K_S.gguf'
OUTPUT='Q3_K_S-llama-2-7b-chat.gguf'
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
        6)
            echo "You chose 'Q4_0-llama-2-7b-chat'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q4_0.gguf'
OUTPUT='Q4_0-llama-2-7b-chat.gguf'
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
        7)
            echo "You chose 'Q4_K_M-llama-2-7b-chat'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q4_K_M.gguf'
OUTPUT='Q4_K_M-llama-2-7b-chat.gguf'
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
        8)
            echo "You chose 'Q4_K_S-llama-2-7b-chat'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q4_K_S.gguf'
OUTPUT='Q4_K_S-llama-2-7b-chat.gguf'
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
        9)
            echo "You chose 'Q5_0-llama-2-7b-chat'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q5_0.gguf'
OUTPUT='Q5_0-llama-2-7b-chat.gguf'
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
        10)
            echo "You chose 'Q5_K_M-llama-2-7b-chat'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q5_K_M.gguf'
OUTPUT='Q5_K_M-llama-2-7b-chat.gguf'
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

        11)
            echo "You chose 'Q5_K_S-llama-2-7b-chat'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q5_K_S.gguf'
OUTPUT='Q5_K_S-llama-2-7b-chat.gguf'
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

        12)
            echo "You chose 'Q6_K-llama-2-7b-chat'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q6_K.gguf'
OUTPUT='Q6_K-llama-2-7b-chat.gguf'
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

        13)
            echo "You chose 'Q8_0-llama-2-7b-chat'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q8_0.gguf'
OUTPUT='Q8_0-llama-2-7b-chat.gguf'
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
