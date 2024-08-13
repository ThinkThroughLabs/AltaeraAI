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
