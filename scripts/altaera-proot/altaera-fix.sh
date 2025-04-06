#!/bin/bash

HEIGHT=20
WIDTH=100
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - Fix"
TITLE="Choosing fixing method"
MENU="Would you like to install the pre-packaged KoboldCpp [Faster], or compile your own? [Slower]"

OPTIONS=(1 "Install pre-packaged KoboldCpp [Faster]"
         2 "Compile own KoboldCpp (No-Blas) [Slower]"
         3 "Compile own KoboldCpp (Blas) [Slower]"
         4 "Compile own experimental KoboldCpp (No-Blas) [Slower]"
         5 "Compile own experimental KoboldCpp (Blas) [Slower]")


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

            echo "Initializing KoboldCpp installation ...

            " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            {
            rm -rf 'altaera-fix_core_files.sh'
            wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-fix_core_files-fast.sh -O 'altaera-fix_core_files.sh'
            chmod a+x 'altaera-fix_core_files.sh'
            } &> /dev/null 2>&1;
            bash 'altaera-fix_core_files.sh'
            clear
            bash 'altaera-fixed_successfully.sh'
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

            echo "Initializing KoboldCpp installation ...

            " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            {
            rm -rf 'altaera-fix_core_files.sh'
            wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-fix_core_files-slow.sh -O 'altaera-fix_core_files.sh'
            chmod a+x 'altaera-fix_core_files.sh'
            } &> /dev/null 2>&1;
            bash 'altaera-fix_core_files.sh'
            clear
            bash 'altaera-fixed_successfully.sh'
            ;;
        3)
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

            echo "Initializing KoboldCpp installation ...

            " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            {
            rm -rf 'altaera-fix_core_files.sh'
            wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-fix_core_files-slow.sh -O 'altaera-fix_core_files.sh'
            chmod a+x 'altaera-fix_core_files.sh'
            } &> /dev/null 2>&1;
            bash 'altaera-fix_core_files.sh'
            clear
            bash 'altaera-fixed_successfully.sh'
            ;;
        4)
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

            echo "Initializing KoboldCpp installation ...

            " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            {
            rm -rf 'altaera-fix_core_files.sh'
            wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-fix_core_files-slow_experimental.sh -O 'altaera-fix_core_files.sh'
            chmod a+x 'altaera-fix_core_files.sh'
            } &> /dev/null 2>&1;
            bash 'altaera-fix_core_files.sh'
            clear
            bash 'altaera-fixed_successfully.sh'
            ;;
        5)
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

            echo "Initializing KoboldCpp installation ...

            " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            {
            rm -rf 'altaera-fix_core_files.sh'
            wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera-fix_core_files-slow_experimental.sh -O 'altaera-fix_core_files.sh'
            chmod a+x 'altaera-fix_core_files.sh'
            } &> /dev/null 2>&1;
            bash 'altaera-fix_core_files.sh'
            clear
            bash 'altaera-fixed_successfully.sh'
            ;;
esac
