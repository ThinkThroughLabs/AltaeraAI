#!/bin/bash

cd '/data/data/com.termux/files/home'

'./AltaeraAI/altaera_auto-check.sh'

{
rm 'AltaeraAI-tmp/termux-default/dialogrc'
cp '/data/data/com.termux/files/home/.dialogrc' '/data/data/com.termux/files/home/AltaeraAI-tmp/termux-default/dialogrc'
rm '/data/data/com.termux/files/home/.dialogrc'
cp '/data/data/com.termux/files/home/AltaeraAI/termux/dialogrc' '/data/data/com.termux/files/home/.dialogrc'
} &> /dev/null 2>&1;

HEIGHT=25
WIDTH=60
CHOICE_HEIGHT=7
BACKTITLE="AltaeraAI - v6.0.0 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="Welcome!"
MENU="What would you like to do?"

OPTIONS=(1 "Start AltaeraAI [...]"
         2 "Manage AI Back-ends [...]"
         3 "Check for updates [...]"
         4 "Force update [...]"
         5 "Changelog [...]"
         6 "Horde [KoboldCpp]"
         7 "Benchmark AI Models [KoboldCpp]"
         8 "Manage AI Models 🤖 [...]"
         9 "Manage stories (Backup/Restore) [...]"
         10 "Change language 🌐"
         11 "Change KoboldCpp Settings [...]"
         12 "Change AltaeraAI Settings [...]"
         13 "ngrok Secure Tunnelling [...]"
         14 "Reinstall (fix) AltaeraAI [...]"
         15 "Uninstall AltaeraAI"
         16 "Customer Support [...]"
         17 "Visit altaera.ai [URL]"
         18 "Donate 💸 [URL]"
         19 "Exit")
         

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

echo "Logging into PRoot Distro ...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);            

            proot-distro login altaera -- ./altaera_pre-launch.sh
            ;;
        2)
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

echo "Logging into PRoot Distro ...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);            

            proot-distro login altaera -- ./altaera-manage_backends.sh
            ;;
        3)
            clear
            './AltaeraAI/altaera-check_for_updates.sh'
            './AltaeraAI/altaera.sh'
            ;;
        4)
            clear
            './AltaeraAI/altaera-force_update.sh'
            './AltaeraAI/altaera.sh'
            ;;
        5)
            clear
            './AltaeraAI/altaera-changelog.sh'
            './AltaeraAI/altaera.sh'
            ;;
        6)
            clear
            './AltaeraAI/altaera-horde.sh'
            './AltaeraAI/altaera.sh'
            ;;
        7)
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

echo "Logging into PRoot Distro ...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

            proot-distro login altaera -- ./benchmark.sh
            ;;
        8)
            clear
            './AltaeraAI/altaera-manage_models.sh'
            './AltaeraAI/altaera.sh'
            ;;
        9)
            clear
            './AltaeraAI/altaera-manage_stories.sh'
            './AltaeraAI/altaera.sh'
            ;;
        10)
            clear
            './AltaeraAI/altaera-lang.sh'
            './AltaeraAI/altaera.sh'
            ;;
        11)
            clear
            './AltaeraAI/altaera-koboldcpp_settings.sh'
            './AltaeraAI/altaera.sh'
            ;;
        12)
            clear
            './AltaeraAI/altaera-settings.sh'
            './AltaeraAI/altaera.sh'
            ;;
        13)
            clear
            './AltaeraAI/altaera-ngrok.sh'
            './AltaeraAI/altaera.sh'
            ;;
        14)
            clear
            './AltaeraAI/altaera-reinstall.sh'
            ;;
        15)
            clear
            './AltaeraAI/altaera-uninstall.sh'
            ;;
        16)
            clear
            './AltaeraAI/altaera-customer_support.sh'
            ;;
        17)
            clear
            termux-open-url 'https://altaera.ai/'
            ;;
        18)
            clear
            termux-open-url 'https://altaera.ai/donate/'
            ;;
        19)
            clear
            {
rm '/data/data/com.termux/files/home/.dialogrc'
cp '/data/data/com.termux/files/home/AltaeraAI-tmp/termux-default/dialogrc' '/data/data/com.termux/files/home/.dialogrc'
} &> /dev/null 2>&1;
            exit
esac

