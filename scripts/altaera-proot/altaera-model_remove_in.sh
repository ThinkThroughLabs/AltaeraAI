files=() #blank the variable so its empty for next use
# Loop folder, add files to array
while IFS= read -r -d $'\0' file; do
    files+=("$file" "")
done < <(find "/root/models" -maxdepth 1 -type f \( -iname \*.bin -o -iname \*.gguf \) -print0)
# or for all files: done < <(find "/home" -maxdepth 1 -type f -print0)
# Check it has at least 1 file to show (otherwise dialog errors)
if [ ${#files[@]} -eq 0 ]; then
    clear
    echo "No .bin files found in $directory"
else
    file=$(dialog --stdout --title "Removing AI Model:" --menu "Choose a file to delete permanently. [This operation cannot be undone!]:" 0 0 0 "${files[@]}")
fi

RESULT=$?
if [ $RESULT -eq 0 ]; then

    cd '/root/kcpp-ae/models'
    rm -rf $file
    dialog --title "AltaeraAI - Remove Models" --msgbox 'The "'$file'" model was successfully deleted!' 10 30
clear
exit
    cd '/data/data/com.termux/files/home/'
    exit
    './AltaeraAI/altaera-manage_models.sh'
else
clear
exit
'./AltaeraAI/altaera-manage_models.sh'
fi
