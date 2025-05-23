#!/data/data/com.termux/files/usr/bin/bash
set -e

# Define constants
ALTAERA_DIR="$HOME/AltaeraAI"

# Spinner that runs while a given PID is alive
spin() {
    local pid="$1"
    local delay=0.1
    local chars='|/-\\'
    tput civis
    while kill -0 "$pid" 2>/dev/null; do
        for ((i=0; i<${#chars}; i++)); do
            printf "\r%-50s [ %c ]" "$spinner_msg" "${chars:i:1}"
            sleep $delay
        done
    done
    tput cnorm
}

# Run command with spinner and checkmark
check_status() {
    local msg="$1"
    spinner_msg="$msg"
    shift

    echo -n ""
    for ((i=0; i<${#msg}; i++)); do
        printf "%s" "${msg:$i:1}"
        sleep 0.0001
    done

    tput el

    ("$@") &> /dev/null &
    local cmd_pid=$!
    spin "$cmd_pid"
    wait "$cmd_pid"

    tput setaf 2
    printf "\r%-50s [ ✔ ]\n" "$spinner_msg"
    tput sgr0
}

clear
cd "$HOME"

# Logo and banner
echo -e "
████████████████████████
██                    ██
██        ██████████  ██
██       ██ █         ██
██      ██  █         ██
██     ██   █         ██
██     █    ████████  ██
██    ██    █         ██
██   ████████         ██
██  ██      █         ██
██  █       ████████  ██
██                    ██
████████████████████████

  \e[1;37mAltaeraAI\e[0m - v6.1.0

     by \e[1;3;38;5;27mThinkThrough\e[0m
"

echo "________________________________________________________________" |
    sed -e :a -e "s/^.{1,$(tput cols)}$/ & /;ta" |
    tr -d '\n' | head -c $(tput cols)

# Check for instabilities
check_status "Checking for instabilities... "
(cd "$ALTAERA_DIR" && \
 wget -q https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-functional_status.sh && \
 chmod a+x 'altaera-functional_status.sh')

if [ "$(bash "$ALTAERA_DIR/altaera-functional_status.sh")" = "true" ]; then
    rm "$ALTAERA_DIR/altaera-functional_status.sh"
else
    rm "$ALTAERA_DIR/altaera-functional_status.sh"
    dialog --backtitle "AltaeraAI" \
           --title "AltaeraAI - Technical Difficulties" \
           --msgbox 'AltaeraAI is experiencing malfunctions at this very moment. If you have recently downloaded or updated it, chances are some things will be broken. Please, give us some time to carry out code repairs. Sorry for the inconvenience!' 10 45
    exit 1
fi

# Check for updates
check_status "Automatically checking for updates... "
(cd "$ALTAERA_DIR" && \
 wget -q https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-version_upstream.sh && \
 chmod a+x 'altaera-version_upstream.sh')

version_upstream=$(bash "$ALTAERA_DIR/altaera-version_upstream.sh")
rm "$ALTAERA_DIR/altaera-version_upstream.sh"

if [ "$version_upstream" != "v6.1.0" ]; then
    bash "$ALTAERA_DIR/altaera-auto-update_available.sh" || exit 1
    exit 1
fi

# Clean-up
rm -f "$ALTAERA_DIR/altaera-version_upstream.sh"
rm -f "/sdcard/com.termux_118.1.apk"

# File integrity check
check_status "Running essential file integrity checks... "

declare -a altaera_files=(
  altaera.sh altaeralogin.sh altaera-update.sh altaera-uninstall.sh
  altaera-reinstall.sh altaera-auto-update_available.sh altaera-changelog_cli.sh
  altaera-check_for_updates.sh altaera-customer_support.sh altaera-force_update.sh
  altaera-horde.sh altaera-horde_settings.sh altaera-horde_settings_hordekey.sh
  altaera-horde_settings_hordemodelname.sh altaera-horde_settings_hordeworkername.sh
  altaera-koboldcpp_settings.sh altaera-koboldcpp_settings_blasbatchsize.sh
  altaera-koboldcpp_settings_contextsize.sh altaera-koboldcpp_settings_flashattention.sh
  altaera-lang.sh altaera-manage_models.sh altaera-model.sh
  altaera-model_backup-restore.sh altaera-model_remove.sh altaera-model_restore.sh
  altaera-ngrok-configuration.sh altaera-ngrok-on.sh altaera-ngrok.sh
  altaera-settings.sh altaera-settings_auto_updates.sh altaera-settings_dialog_theme.sh
  altaera-uninstall.sh altaera-up_to_date.sh altaera-update-proot.sh
  altaera-update_available.sh altaera-updated_successfully.sh
  altaera_no-check.sh altaera_pre-update.sh
  altaera-custom_ai_model.sh altaera-custom_ai_model_url.sh
)

for file in "${altaera_files[@]}"; do
    if [ ! -f "$ALTAERA_DIR/$file" ]; then
        bash "$ALTAERA_DIR/altaera_auto-check_corrupted-files.sh" || exit 1
        exit 1
    fi
    sleep 0.01
done

clear
exec bash "$ALTAERA_DIR/altaera.sh"
exit 0
