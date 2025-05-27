#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.1.3 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired gemma-3-12b-it-GGUF model size/strategy:"

OPTIONS=(1 "[...] Go Back"
         2 "q2_k-gemma-3-12b-it.gguf \ 4.77 GB"
         3 "q2_k_l-gemma-3-12b-it.gguf \ 4.77 GB"
         4 "q3_k_m.gemma-3-12b-it.gguf \ 6.01 GB"
         5 "q3_k_s.gemma-3-12b-it.gguf \ 5.46 GB"
         6 "iq4_nl-gemma-3-12b-it.gguf \ 6.89 GB"
         7 "iq4_xs-gemma-3-12b-it.gguf \ 6.55 GB"
         8 "q4_k_m-gemma-3-12b-it.gguf \ 7.3 GB"
         9 "q4_k_s-gemma-3-12b-it.gguf \ 6.94 GB"
         10 "q4_0-gemma-3-12b-it.gguf \ 6.91 GB"
         11 "q4_1-gemma-3-12b-it.gguf \ 7.56 GB"
         12 "q5_k_m-gemma-3-12b-it.gguf \ 8.45 GB"
         13 "q5_k_s-gemma-3-12b-it.gguf \ 8.23 GB"
         14 "q6_k-gemma-3-12b-it.gguf \ 9.66 GB"
         15 "q8_0-gemma-3-12b-it.gguf \ 12.5 GB"
         16 "f16-gemma-3-12b-it.gguf \ 23.5 GB")


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
            echo "You chose 'q2_k-gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-Q2_K.gguf'
OUTPUT='q2_k-gemma-3-12b-it.gguf'
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
            echo "You chose 'q2_k_l.gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-Q2_K_L.gguf'
OUTPUT='q2_k_l-gemma-3-12b-it.gguf'
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
            echo "You chose 'q3_k_m.gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-Q3_K_M.gguf'
OUTPUT='q3_k_m-gemma-3-12b-it.gguf'
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
            echo "You chose 'q3_k_s.gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-Q3_K_S.gguf'
OUTPUT='q3_k_s-gemma-3-12b-it.gguf'
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
            echo "You chose 'iq4_nl-gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-IQ4_NL.gguf'
OUTPUT='iq4_nl-gemma-3-12b-it.gguf'
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
            echo "You chose 'iq4_xs-gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-IQ4_XS.gguf'
OUTPUT='iq4_xs-gemma-3-12b-it.gguf'
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
            echo "You chose 'q4_k_m-gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-Q4_K_M.gguf'
OUTPUT='q4_k_m-gemma-3-12b-it.gguf'
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
            echo "You chose 'q4_k_s-gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-Q4_K_S.gguf'
OUTPUT='q4_k_s-gemma-3-12b-it.gguf'
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
            echo "You chose 'q4_0-gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-Q4_0.gguf'
OUTPUT='q4_0-gemma-3-12b-it.gguf'
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
            echo "You chose 'q4_1-gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-Q4_1.gguf'
OUTPUT='q4_1-gemma-3-12b-it.gguf'
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
            echo "You chose 'q5_k_m-gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-Q5_K_M.gguf'
OUTPUT='q5_k_m-gemma-3-12b-it.gguf'
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
            echo "You chose 'q5_k_s-gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-Q5_K_S.gguf'
OUTPUT='q5_k_s-gemma-3-12b-it.gguf'
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
        14)
            echo "You chose 'q6_k-gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-Q6_K.gguf'
OUTPUT='q6_k-gemma-3-12b-it.gguf'
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
        15)
            echo "You chose 'q8_0-gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/unsloth/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it-Q8_0.gguf'
OUTPUT='q8_0-gemma-3-12b-it.gguf'
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
        16)
            echo "You chose 'f16-gemma-3-12b-it.gguf'
                        
            "
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/MaziyarPanahi/gemma-3-12b-it-GGUF/resolve/main/gemma-3-12b-it.fp16.gguf'
OUTPUT='f16-gemma-3-12b-it.gguf'
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
