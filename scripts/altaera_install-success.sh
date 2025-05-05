# Typing animation function
type_text_centered() {
    text="$1"
    delay="${2:-0.05}"
    term_width=$(tput cols)
    padding=$(( (term_width - ${#text}) / 2 ))

    printf "%*s" "$padding" ""
    for ((i=0; i<${#text}; i++)); do
        printf "%s" "${text:$i:1}"
        sleep "$delay"
    done
    echo
}

# Final success message
clear
term_width=$(tput cols)
success_msg="✔ Installation completed successfully."
padding=$(( (term_width - ${#success_msg}) / 2 ))
echo -e "\n"
printf "%*s\033[1;32m%s\033[0m\n\n" "$padding" "" "$success_msg"

# Animated, centered instruction
type_text_centered "To start, please type in 'ae'."
