#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v5.7.1 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AltaeraAI - ollama"
MENU="Choose what to do:"

OPTIONS=(1 "[...] Go Back"
         2 "Initialize ollama [do this first!]"
         3 "Start ollama")


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
            exit
            ./altaera.sh
            ;;
        2)
        clear
        echo "Initializing ollama... Now press 'Ctrl+T', type in 'ae' and start ollama 

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
            {
            ollama serve
            } &> /dev/null 2>&1;
            
            ;;
        3)
            ;;

files=() #blank the variable so its empty for next use
# Loop folder, add files to array
while IFS= read -r -d $'\0' file; do
    files+=("$file" "")
done < <(find "/root/models" -maxdepth 1 -type f \( -iname \*.bin -o -iname \*.gguf \) -print0)
# or for all files: done < <(find "/home" -maxdepth 1 -type f -print0)
# Check it has at least 1 file to show (otherwise dialog errors)
if [ ${#files[@]} -eq 0 ]; then
    clear
    bash '/root/altaera-model_empty.sh'
else
    file=$(dialog --stdout --title "Select an AI Model:" --menu "Choose a file:" 0 0 0 "${files[@]}")
fi

RESULT=$?
if [ $RESULT -eq 0 ]; then

if [[ $file == *.gguf ]]
then
    clear
    sed -i '/FROM models/c\FROM models/models/'$result' \\' Modelfile
    ollama create $result -f Modelfile
    ollama run $result
else
clear
exit
'./data/data/com.termux/files/home/AltaeraAI/altaera.sh'
fi
esac
