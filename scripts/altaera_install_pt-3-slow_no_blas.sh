#!/bin/bash

            clear
            echo "

        ██████████
       ██ █
      ██  █
     ██   █
     █    ████████
    ██    █
   ████████
  ██      █
  █       ████████

  AltaeraAI - v6.0.0

    by ThinkThrough


  "

  echo "Did you know...

  " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

  	function random_message() {
    # Array of random messages
    messages=("that KobbleTiny is the world's sweetest child?" "that KobbleTiny is concedo's designed mind?")

    # Generate a random index
    index=$(( RANDOM % ${#messages[@]} ))

    # Get the random message
    message=${messages[$index]}

    # Print the random message
    echo $message | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
}

# Call the function
random_message

echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing initial files ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing core files (please be patient) ...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
rm -rf "/etc/bash.bashrc"
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/bash.bashrc
cp 'bash.bashrc' "/etc"
rm -rf 'bash.bashrc'
if [ -f "/data/data/com.termux/files/home/.dialogrc" ]; then
cp '/data/data/com.termux/files/home/.dialogrc' '/data/data/com.termux/files/home/AltaeraAI-tmp/termux-default/dialogrc'
rm '/data/data/com.termux/files/home/.dialogrc'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/refs/heads/main/termux/dialogrc -O '.dialogrc' -P '/data/data/com.termux/files/home'
elif [ ! -f "/data/data/com.termux/files/home/.dialogrc" ]; then
dialog --create-rc ~/.dialogrc
cp '/data/data/com.termux/files/home/.dialogrc' '/data/data/com.termux/files/home/AltaeraAI-tmp/termux-default/dialogrc'
rm '/data/data/com.termux/files/home/.dialogrc'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/refs/heads/main/termux/dialogrc -O '.dialogrc' -P '/data/data/com.termux/files/home'
fi
fi
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera.sh
chmod a+x 'altaera.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/refs/heads/main/scripts/altaera-proot/altaera-cq_gguf_models.sh
chmod a+x 'altaera-cq_gguf_models.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/refs/heads/main/scripts/altaera-proot/altaera-convert_hf_to_gguf.sh
chmod a+x 'altaera-convert_hf_to_gguf.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/refs/heads/main/scripts/altaera-proot/altaera-convert_url.sh
chmod a+x 'altaera-convert_url.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-manage_backends.sh
chmod a+x 'altaera-manage_backends.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-mega.sh
chmod a+x 'altaera-mega.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-mega_backup.sh
chmod a+x 'altaera-mega_backup.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-mega_login.sh
chmod a+x 'altaera-mega_login.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-mega_restore.sh
chmod a+x 'altaera-mega_restore.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-koboldcpp_install.sh
chmod a+x 'altaera-koboldcpp_install.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-ollama.sh
chmod a+x 'altaera-ollama.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-ollama_install.sh
chmod a+x 'altaera-ollama_install.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-sillytavern.sh
chmod a+x 'altaera-sillytavern.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-sillytavern_install.sh
chmod a+x 'altaera-sillytavern_install.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-ollama_start.sh
chmod a+x 'altaera-ollama_start.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-ollama_official_models.sh
chmod a+x 'altaera-ollama_official_models.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-ollama_front-end.sh
chmod a+x 'altaera-ollama_front-end.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-ollama_maid-install.sh
chmod a+x 'altaera-ollama_maid-install.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-ollama_maid.sh
chmod a+x 'altaera-ollama_maid.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/Modelfile
chmod a+x 'Modelfile'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera_pre-launch.sh
chmod a+x 'altaera_pre-launch.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/horde.sh
chmod a+x 'horde.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-fix.sh
chmod a+x 'altaera-fix.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-fixed_successfully.sh
chmod a+x 'altaera-fixed_successfully.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera_corrupted-files.sh
chmod a+x 'altaera_corrupted-files.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-ollama_install.sh
chmod a+x 'altaera-ollama_install.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/benchmark.sh
chmod a+x 'benchmark.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-model_empty.sh
chmod a+x 'altaera-model_empty.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-model_list_empty.sh
chmod a+x 'altaera-model_list_empty.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-model_list.sh
chmod a+x 'altaera-model_list.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-model_remove_in.sh
chmod a+x 'altaera-model_remove_in.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-model_backup.sh
chmod a+x 'altaera-model_backup.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/dialog_theme-on.sh
chmod a+x 'dialog_theme-on.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/dialog_theme-off.sh
chmod a+x 'dialog_theme-off.sh'
git clone https://github.com/LostRuins/koboldcpp
mv 'koboldcpp' 'kcpp-ae'
      wget https://github.com/ThinkThroughLabs/AltaeraAI/releases/download/v3.1/altaera-v3.1.tar.gz
      tar -xf 'altaera-v3.1.tar.gz'
      mv 'koboldcpp-altaera' 'kcpp-ae_cm'
      rm -rf 'altaera-v3.1.tar.gz'


cd '/root/kcpp-ae'
make
cd '/root'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-4.sh
chmod a+x 'altaera_install_pt-4.sh'
} &> /dev/null 2>&1;

./altaera_install_pt-4.sh
