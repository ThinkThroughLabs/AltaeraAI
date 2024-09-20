cat altaera-convert_url.sh
!/bin/bash

# Redirecting dialog box output to a temporary stream
exec 3>&1  # Save the place that stdout (1) points to
result=$(dialog --title "Input Required" --inputbox "Enter repostiory URL for a HuggingFace model (GGUF):" 10 30 2>&1 >/dev/tty)
exec 3>&-  # Close the temporary stream

            git clone $result && cd "!$:t:r"
            rm 'pytorch_model.bin'
            wget $result/resolve/main/pytorch_model.bin
            python '/root/altaera-c&q/llama.cpp/convert_hf_to_gguf.py' './'
