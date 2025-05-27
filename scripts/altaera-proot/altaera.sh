#!/bin/bash

clear

# Terminal dimensions
LINES=$(tput lines)
COLUMNS=$(tput cols)
RESERVED=2
OUTPUT_HEIGHT=$((LINES - RESERVED))
SEPARATOR_LINE=$((LINES - 2))
FOOTER_LINE=$((LINES - 1))

# Create log file
LOGFILE=$(mktemp)

files=() # blank the variable so it's empty for next use
# Loop folder, add files to array
while IFS= read -r -d $'\0' file; do
    files+=("$file" "")
done < <(find "/root/models" -maxdepth 1 -type f -iname \*.gguf -print0)

# Check it has at least 1 file to show (otherwise dialog errors)
if [ ${#files[@]} -eq 0 ]; then
    clear
    bash '/root/altaera-model_empty.sh'
else
    file=$(dialog --stdout --title "Select an AI Model:" --menu "Choose a file:" 0 0 0 "${files[@]}")
fi

RESULT=$?
if [ $RESULT -eq 0 ]; then

if [[ $file == *.gguf ]]; then
clear
cd kcpp-ae

# Start Python script, redirect output
python3 koboldcpp.py "$file" 1551 \
--blasbatchsize 2048 \
--contextsize 2048 > "$LOGFILE" 2>&1 &
PYTHON_PID=$!

# Spinner characters in brackets
SPINNER_CHARS=('[ | ]' '[ / ]' '[ - ]' '[ \\ ]')
SPIN_INDEX=0

# Show animated footer until KoboldCpp is ready
spinner_footer() {
    while ! grep -q 'Please connect to custom endpoint at' "$LOGFILE"; do
        tput cup "$SEPARATOR_LINE" 0
        tput el
        printf '%*s\n' "$COLUMNS" '' | tr ' ' '-'

        tput cup "$FOOTER_LINE" 0
        tput el
        SPIN_CHAR="${SPINNER_CHARS[$SPIN_INDEX]}"
        FOOTER_MSG="$SPIN_CHAR KoboldCpp session initializing. To stop it, press 'q'."
        PADDING=$(( (COLUMNS - ${#FOOTER_MSG}) / 2 ))
        printf "%*s\033[1m%s\033[0m" "$PADDING" '' "$FOOTER_MSG"

        ((SPIN_INDEX=(SPIN_INDEX+1)%4))
        sleep 0.1
    done

    # Final footer after ready
    tput cup "$SEPARATOR_LINE" 0
    tput el
    printf '%*s\n' "$COLUMNS" '' | tr ' ' '-'

    tput cup "$FOOTER_LINE" 0
    tput el
    FOOTER_MSG="KoboldCpp session initialized. To stop it, press 'q'."
    PADDING=$(( (COLUMNS - ${#FOOTER_MSG}) / 2 ))
    printf "%*s\033[1m%s\033[0m" "$PADDING" '' "$FOOTER_MSG"
}
spinner_footer &
FOOTER_SPINNER_PID=$!

# Show log output within the top portion of terminal
(
    tput civis  # hide cursor
    LINE_COUNT=0
    tail -n +1 -F "$LOGFILE" | while IFS= read -r line; do
        # If too many lines, start from top again
        if (( LINE_COUNT >= OUTPUT_HEIGHT )); then
            clear
            LINE_COUNT=0
        fi
        tput cup "$LINE_COUNT" 0
        tput el
        printf "%s\n" "$line"
        ((LINE_COUNT++))
    done
) &
DISPLAY_PID=$!

# Wait until KoboldCpp reports it's ready, then open browser
(
    while ! grep -q 'Please connect to custom endpoint at' "$LOGFILE"; do
        sleep 0.5
    done
    termux-open-url 'http://localhost:1551/?streaming=1#'
) &
OPEN_PID=$!

# Wait for 'q' keypress
while IFS= read -rsn1 key; do
    [[ $key == "q" ]] && break
done

# Cleanup
kill -15 "$PYTHON_PID" "$DISPLAY_PID" "$OPEN_PID" "$FOOTER_SPINNER_PID" 2>/dev/null
wait "$PYTHON_PID" 2>/dev/null
rm "$LOGFILE"
tput cnorm

# Clear footer
tput cup "$SEPARATOR_LINE" 0; tput el
tput cup "$FOOTER_LINE" 0; tput el
clear
echo "KoboldCpp session terminated. To start AltaeraAI again, type in 'ae'."
fi

else
clear
exit
'./data/data/com.termux/files/home/AltaeraAI/altaera.sh'
fi
