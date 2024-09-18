files=() #blank the variable so its empty for next use
# Loop folder, add files to array
while IFS= read -r -d $'\0' file; do
    files+=("$file" "")
done < <(find "./AltaeraAI-stories" -maxdepth 1 -type f -name "*.json" -print0)
# or for all files: done < <(find "/home" -maxdepth 1 -type f -print0)
# Check it has at least 1 file to show (otherwise dialog errors)
if [ ${#files[@]} -eq 0 ]; then
    clear
    echo "No stories found in $directory"
else
    file=$(dialog --stdout --title "Restoring stories:" --menu "Choose a file to restore from the MEGA Cloud:" 0 0 0 "${files[@]}")
fi

RESULT=$?
if [ $RESULT -eq 0 ]; then

    cp $file '/sdcard/Download'

    echo  "

    
    You have successfully restored $file
    "
clear
exit
    cd '/data/data/com.termux/files/home/'
    exit
else
clear
exit
fi
