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

  AltaeraAI - v5.7.5

    by ThinkThroughLabs


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

echo "Installing initial files ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing core files...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
rm -rf "/etc/bash.bashrc"
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/bash.bashrc
cp 'bash.bashrc' "/etc"
rm -rf 'bash.bashrc'
dialog --create-rc ~/.dialogrc
sed -i '/^screen_color = (CYAN,BLUE,ON)/d' ~/.dialogrc
echo "screen_color = (CYAN,BLACK,ON)" >> ~/.dialogrc
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera.sh
chmod a+x 'altaera.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-manage_backends.sh
chmod a+x 'altaera-manage_backends.sh'
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
wget https://github.com/ThinkThroughLabs/AltaeraAI/releases/download/kcpp-ae_v5.7.5/kcpp-ae_v5.7.5.tar.gz
tar -xf 'kcpp-ae_v5.7.5.tar.gz'
rm -rf 'kcpp-ae_v5.7.5.tar.gz'
      rm -rf 'koboldcpp-altaera'
      rm -rf 'kcpp-ae_cm'
      wget https://github.com/ThinkThroughLabs/AltaeraAI/releases/download/v3.1/altaera-v3.1.tar.gz
      tar -xf 'altaera-v3.1.tar.gz'
      mv 'koboldcpp-altaera' 'kcpp-ae_cm'
      rm -rf 'altaera-v3.1.tar.gz'


cd '/root'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-4.sh
chmod a+x 'altaera_install_pt-4.sh'
} &> /dev/null 2>&1;

./altaera_install_pt-4.sh
