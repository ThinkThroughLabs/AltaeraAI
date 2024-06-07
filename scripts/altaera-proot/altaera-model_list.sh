#!/bin/bash

files=() #blank the variable so its empty for next use
# Loop folder, add files to array
while IFS= read -r -d $'\0' file; do
    files+=("$file" "")
done < <(find "/root/models" -maxdepth 1 -type f \( -iname \*.bin -o -iname \*.gguf \) -print0)
# or for all files: done < <(find "/home" -maxdepth 1 -type f -print0)
# Check it has at least 1 file to show (otherwise dialog errors)
if [ ${#files[@]} -eq 0 ]; then
    clear
    bash '/root/altaera-model_list_empty.sh'
else
    file=$(dialog --stdout --title "AltaeraAI - AI Models:" --menu "This is a list of your currently downloaded models:" 0 0 0 "${files[@]}")
fi

RESULT=$?
if [ $RESULT -eq 0 ]; then

clear
exit

else
clear
exit
fi
