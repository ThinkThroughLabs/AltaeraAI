#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.1.4 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AI Model Selection"
MENU="Choose your desired RWKV-4-World model size:"

OPTIONS=(1 "[...] Go Back"
         2 "F16-RWKV-4-World-0.1B-Untuned \ 0.39GB / min. 1.5GB RAM"
         3 "F32-RWKV-4-World-0.1B-Untuned \ 0.78GB / min. 3GB RAM"
         4 "F16-RWKV-4-World-0.4B-Untuned \ 0.92GB / min. 4GB RAM"
         5 "F32-RWKV-4-World-0.4B-Untuned \ 1.85GB / min. 6GB RAM"
         6 "Q4_0-RWKV-4-World-1.5B-Untuned \ 1.19GB / min. 4GB RAM"
         7 "Q4_0-RWKV-4-World-1.5B-CHNtuned \ 1.69GB / min. 6GB RAM"
         8 "Q4_1-RWKV-4-World-1.5B-Untuned \ 1.26GB / min. 4GB RAM"
         9 "Q4_1-RWKV-4-World-1.5B-CHNtuned \ 1.76GB / min. 6GB RAM"
         10 "Q5_0-RWKV-4-World-1.5B-Untuned \ 1.34GB / min. 4/6GB RAM"
         11 "Q5_0-RWKV-4-World-1.5B-CHNtuned \ 1.84GB / min. 6GB RAM"
         12 "Q5_1-RWKV-4-World-1.5B-Untuned \ 1.42GB / min. 6GB RAM"
         13 "Q5_1-RWKV-4-World-1.5B-CHNtuned \ 1.92GB / min. 6GB RAM"
         14 "Q8_0-RWKV-4-World-1.5B-Untuned \ 1.8GB / min. 6GB RAM"
         15 "Q8_0-RWKV-4-World-1.5B-CHNtuned \ 2.3GB / min. 8GB RAM"
         16 "Q4_0-RWKV-4-World-3B-Untuned \ 2.06GB / min. 8GB RAM"
         17 "Q4_0-RWKV-4-World-3B-CHNtuned \ 2.06GB / min. 8GB RAM"
         18 "Q4_1-RWKV-4-World-3B-Untuned \ 2.22GB / min. 8GB RAM"
         19 "Q4_1-RWKV-4-World-3B-CHNtuned \ 2.22GB / min. 8GB RAM"
         20 "Q5_0-RWKV-4-World-3B-Untuned \ 2.37GB / min. 8GB RAM"
         21 "Q5_0-RWKV-4-World-3B-CHNtuned \ 2.37GB / min. 8GB RAM"
         22 "Q5_1-RWKV-4-World-3B-Untuned \ 2.53GB / min. 8/12GB RAM"
         23 "Q5_1-RWKV-4-World-3B-CHNtuned \ 2.53GB / min. 8/12GB RAM"
         24 "Q8_0-RWKV-4-World-3B-Untuned \ 3.33GB / min. 12GB RAM"
         25 "Q8_0-RWKV-4-World-3B-CHNtuned \ 3.33GB / min. 12GB RAM"
         26 "Q4_0-RWKV-4-World-7B-Untuned \ 4.66GB / min. 12GB RAM"
         27 "Q4_1-RWKV-4-World-7B-Untuned \ 5.07GB / min. 12GB RAM"
         28 "Q5_0-RWKV-4-World-7B-Untuned \ 5.47GB / min. 12GB RAM"
         29 "Q5_1-RWKV-4-World-7B-Untuned \ 5.88GB / min. 12/16GB RAM"
         30 "Q8_0-RWKV-4-World-7B-Untuned \ 7.91GB / min. 16GB RAM")


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
            echo "You chose 'F16-RWKV-4-World-0.1B-Untuned \ 0.39GB / min. 1.5GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml/resolve/main/f16-RWKV-4-World-0.1B-v1-20230520-ctx4096.bin -O 'f16-RWKV-4-World-0.1B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        3)
            echo "You chose 'F32-RWKV-4-World-0.1B-Untuned \ 0.78GB / min. 3GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml/resolve/main/f32-RWKV-4-World-0.1B-v1-20230520-ctx4096.bin -O 'f32-RWKV-4-World-0.1B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        4)
            echo "You chose 'F16-RWKV-4-World-0.4B-Untuned \ 0.92GB / min. 4GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml/resolve/main/f16-RWKV-4-World-0.4B-v1-20230529-ctx4096.bin -O 'f16-RWKV-4-World-0.4B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        5)
            echo "You chose 'F32-RWKV-4-World-0.4B-Untuned \ 1.85GB / min. 6GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml/resolve/main/f32-RWKV-4-World-0.4B-v1-20230529-ctx4096.bin -O 'f32-RWKV-4-World-0.4B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        6)
            echo "You chose 'Q4_0-RWKV-4-World-1.5B-Untuned \ 1.19GB / min. 4GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q4_0-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin -O 'q4_0-RWKV-4-World-1.5B-v1-fixed-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        7)
            echo "你选择了 'Q4_0-RWKV-4-World-1.5B-CHNtuned \ 1.69GB / min. 6GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q4_0-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin -O 'q4_0-RWKV-4-World-CHNtuned-1.5B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        8)
            echo "You chose 'Q4_1-RWKV-4-World-1.5B-Untuned \ 1.26GB / min. 4GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q4_1-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin -O 'q4_1-RWKV-4-World-1.5B-v1-fixed-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        9)
            echo "你选择了 'Q4_1-RWKV-4-World-1.5B-CHNtuned \ 1.76GB / min. 6GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q4_1-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin -O 'q4_1-RWKV-4-World-CHNtuned-1.5B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        10)
            echo "You chose 'Q5_0-RWKV-4-World-1.5B-Untuned \ 1.34GB / min. 4/6GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q5_0-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin -O 'q5_0-RWKV-4-World-1.5B-v1-fixed-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        11)
            echo "你选择了 'Q5_0-RWKV-4-World-1.5B-CHNtuned \ 1.84GB / min. 6GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q5_0-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin -O 'q5_0-RWKV-4-World-CHNtuned-1.5B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        12)
            echo "You chose 'Q5_1-RWKV-4-World-1.5B-Untuned \ 1.42GB / min. 6GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q5_1-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin -O 'q5_1-RWKV-4-World-1.5B-v1-fixed-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        13)
            echo "你选择了 'Q5_1-RWKV-4-World-1.5B-CHNtuned \ 1.92GB / min. 6GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q5_1-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin -O 'q5_1-RWKV-4-World-CHNtuned-1.5B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        14)
            echo "You chose 'Q8_0-RWKV-4-World-1.5B-Untuned \ 1.8GB / min. 6GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q8_0-RWKV-4-World-1.5B-v1-fixed-20230612-ctx4096.bin -O 'q8_0-RWKV-4-World-1.5B-v1-fixed-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        15)
            echo "你选择了 'Q8_0-RWKV-4-World-1.5B-CHNtuned \ 2.3GB / min. 8GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q8_0-RWKV-4-World-CHNtuned-1.5B-v1-20230620-ctx4096.bin -O 'q8_0-RWKV-4-World-CHNtuned-1.5B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        16)
            echo "You chose 'Q4_0-RWKV-4-World-3B-Untuned \ 2.06GB / min. 8GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q4_0-RWKV-4-World-3B-v1-20230619-ctx4096.bin -O 'q4_0-RWKV-4-World-3B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        17)
            echo "你选择了 'Q4_0-RWKV-4-World-3B-CHNtuned'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q4_0-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin -O 'q4_0-RWKV-4-World-CHNtuned-3B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        18)
            echo "You chose 'Q4_1-RWKV-4-World-3B-Untuned \ 2.22GB / min. 8GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q4_1-RWKV-4-World-3B-v1-20230619-ctx4096.bin -O 'q4_1-RWKV-4-World-3B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        19)
            echo "你选择了 'Q4_1-RWKV-4-World-3B-CHNtuned \ 2.22GB / min. 8GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q4_1-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin -O 'q4_1-RWKV-4-World-CHNtuned-3B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        20)
            echo "You chose 'Q5_0-RWKV-4-World-3B-Untuned'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q5_0-RWKV-4-World-3B-v1-20230619-ctx4096.bin -O 'q5_0-RWKV-4-World-3B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        21)
            echo "你选择了 'Q5_0-RWKV-4-World-3B-CHNtuned'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q5_0-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin -O 'q5_0-RWKV-4-World-CHNtuned-3B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        22)
            echo "You chose 'Q5_1-RWKV-4-World-3B-Untuned \ 2.53GB / min. 8/12GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q5_1-RWKV-4-World-3B-v1-20230619-ctx4096.bin -O 'q5_1-RWKV-4-World-3B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        23)
            echo "你选择了 'Q5_1-RWKV-4-World-3B-Untuned \ 2.53GB / min. 8/12GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q5_1-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin -O 'q5_1-RWKV-4-World-CHNtuned-3B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        24)
            echo "You chose 'Q8_0-RWKV-4-World-3B-Untuned \ 3.33GB / min. 12GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q8_0-RWKV-4-World-3B-v1-20230619-ctx4096.bin -O 'q8_0-RWKV-4-World-3B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        25)
            echo "你选择了 'Q8_0-RWKV-4-World-3B-CHNtuned \ 3.33GB / min. 12GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q8_0-RWKV-4-World-CHNtuned-3B-v1-20230625-ctx4096.bin -O 'q8_0-RWKV-4-World-CHNtuned-3B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        26)
            echo "You chose 'Q4_0-RWKV-4-World-7B-Untuned \ 4.66GB / min. 12GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q4_0-RWKV-4-World-7B-v1-20230626-ctx4096.bin -O 'q4_0-RWKV-4-World-7B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        27)
            echo "You chose 'Q4_1-RWKV-4-World-7B-Untuned \ 5.07GB / min. 12GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q4_1-RWKV-4-World-7B-v1-20230626-ctx4096.bin -O 'q4_1-RWKV-4-World-7B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        28)
            echo "You chose 'Q5_0-RWKV-4-World-7B-Untuned \ 5.47GB / min. 12GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q5_0-RWKV-4-World-7B-v1-20230626-ctx4096.bin -O 'q5_0-RWKV-4-World-7B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        29)
            echo "You chose 'Q5_1-RWKV-4-World-7B-Untuned \ 5.88GB / min. 12/16GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q5_1-RWKV-4-World-7B-v1-20230626-ctx4096.bin -O 'q5_1-RWKV-4-World-7B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
        30)
            echo "You chose 'Q8_0-RWKV-4-World-7B-Untuned \ 7.91GB / min. 16GB RAM'
                        
            
            {
            mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'
            } &> /dev/null 2>&1;
            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/models'

URL='https://huggingface.co/ThinkThroughLabs/rwkv-4-world-ggml-quantized/resolve/main/q8_0-RWKV-4-World-7B-v1-20230626-ctx4096.bin -O 'q8_0-RWKV-4-World-7B-v1-ctx4096.bin' -q --show-progress
            cd /root
            clear
            ;;
esac
