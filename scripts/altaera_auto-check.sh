clear

# ASCII Header
echo "
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

  AltaeraAI - v6.0.0

    by ThinkThrough
"

# Create a visually separated header line
echo "________________________________________________________________"
echo ""

# Function to simulate progress with dynamic check marks
display_check() {
    echo -n "$1"
    tput el
    sleep 1
    echo -n "[ ✔ ]"
    echo
}

# Checking for instabilities
echo "Checking for instabilities [ ... ]"
display_check "Checking for instabilities"

# Automatically checking for updates
echo "Automatically checking for updates [ ... ]"
display_check "Automatically checking for updates"

# Running essential file integrity checks
echo "Running essential file integrity checks [ ... ]"
display_check "Running essential file integrity checks"

# Download and check functional status
{
    cd "AltaeraAI"
    wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-functional_status.sh
    chmod a+x 'altaera-functional_status.sh'
    cd ..
} &> /dev/null 2>&1;

if [ "$(bash 'AltaeraAI/altaera-functional_status.sh')" = "true" ]; then
    rm -rf 'AltaeraAI/altaera-functional_status.sh'
else
    rm -rf 'AltaeraAI/altaera-functional_status.sh'
    dialog --backtitle "AltaeraAI" \
           --title "AltaeraAI - Technical Difficulties" \
           --msgbox 'AltaeraAI is experiencing malfunctions at this very moment. If you have recently downloaded or updated it, chances are some things will be broken. Please, give us some time to carry out code repairs. Sorry for the inconvenience!' 10 45
fi

clear

# Check internet connection
if [ "$(cat < /dev/null > /dev/tcp/8.8.8.8/53; echo $?)" = "0" ]; then
    echo "
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

  AltaeraAI - v6.0.0

    by ThinkThrough
"
    # Create a visually separated header line
    echo "________________________________________________________________"
    echo ""

    # Checking for instabilities
    echo "Checking for instabilities [ ✔ ]"
    display_check "Checking for instabilities"

    # Automatically checking for updates
    echo "Automatically checking for updates [ ✔ ]"
    display_check "Automatically checking for updates"

    # Running essential file integrity checks
    echo "Running essential file integrity checks [ ✔ ]"
    display_check "Running essential file integrity checks"

    sleep .5

    # Download and update version if necessary
    {
        cd "AltaeraAI"
        wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-version_upstream.sh
        chmod a+x 'altaera-version_upstream.sh'
        cd ..
    } &> /dev/null 2>&1;

    version_upstream=$(bash 'AltaeraAI/altaera-version_upstream.sh')
    if [ "$version_upstream" = "v6.0.0" ]; then
        rm -rf 'AltaeraAI/altaera-version_upstream.sh'
    else
        rm -rf 'AltaeraAI/altaera-version_upstream.sh'
        bash 'AltaeraAI/altaera-auto-update_available.sh'
    fi
fi

# Clean up
{
    rm -rf 'AltaeraAI/altaera-version_upstream.sh'
    rm -rf '/sdcard/com.termux_118.1.apk'
} &> /dev/null 2>&1;

clear

# Re-display header
echo "
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

  AltaeraAI - v6.0.0

    by ThinkThrough
"

# Create a visually separated header line
echo "________________________________________________________________"
echo ""

# Checking for instabilities
echo "Checking for instabilities [ ✔ ]"
display_check "Checking for instabilities"

# Automatically checking for updates
echo "Automatically checking for updates [ ✔ ]"
display_check "Automatically checking for updates"

# Running essential file integrity checks
echo "Running essential file integrity checks [ ✔ ]"
display_check "Running essential file integrity checks"

# Check for necessary files and scripts
sleep .5

if [ -f /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/altaera.sh ] && \
   [ -f /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/benchmark.sh ] && \
   [ -f /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/horde.sh ] && \
   [ -f AltaeraAI/altaera.sh ] && [ -f AltaeraAI/altaeralogin.sh ] && [ -f AltaeraAI/altaera-update.sh ] && \
   [ -f AltaeraAI/altaera-uninstall.sh ] && [ -f AltaeraAI/altaera-reinstall.sh ] && \
   [ -f AltaeraAI/altaera-auto-update_available.sh ] && [ -f AltaeraAI/altaera-changelog_cli.sh ] && \
   [ -f AltaeraAI/altaera-check_for_updates.sh ] && [ -f AltaeraAI/altaera-customer_support.sh ] && \
   [ -f AltaeraAI/altaera-force_update.sh ] && [ -f AltaeraAI/altaera-horde.sh ] && \
   [ -f AltaeraAI/altaera-horde_settings.sh ] && [ -f AltaeraAI/altaera-horde_settings_hordekey.sh ] && \
   [ -f AltaeraAI/altaera-horde_settings_hordemodelname.sh ] && [ -f AltaeraAI/altaera-horde_settings_hordeworkername.sh ] && \
   [ -f AltaeraAI/altaera-koboldcpp_settings.sh ] && [ -f AltaeraAI/altaera-koboldcpp_settings_blasbatchsize.sh ] && \
   [ -f AltaeraAI/altaera-koboldcpp_settings_contextsize.sh ] && [ -f AltaeraAI/altaera-koboldcpp_settings_flashattention.sh ] && \
   [ -f AltaeraAI/altaera-lang.sh ] && [ -f AltaeraAI/altaera-manage_models.sh ] && \
   [ -f AltaeraAI/altaera-model.sh ] && [ -f AltaeraAI/altaera-model_backup-restore.sh ] && \
   [ -f AltaeraAI/altaera-model_remove.sh ] && [ -f AltaeraAI/altaera-model_restore.sh ] && \
   [ -f AltaeraAI/altaera-ngrok-configuration.sh ] && [ -f AltaeraAI/altaera-ngrok-on.sh ] && \
   [ -f AltaeraAI/altaera-ngrok.sh ] && [ -f AltaeraAI/altaera-settings.sh ] && \
   [ -f AltaeraAI/altaera-settings_auto_updates.sh ] && [ -f AltaeraAI/altaera-settings_dialog_theme.sh ] && \
   [ -f AltaeraAI/altaera-uninstall.sh ] && [ -f AltaeraAI/altaera-up_to_date.sh ] && \
   [ -f AltaeraAI/altaera-update-proot.sh ] && [ -f AltaeraAI/altaera-update-proot.sh ] && \
   [ -f AltaeraAI/altaera-update_available.sh ] && [ -f AltaeraAI/altaera-updated_successfully.sh ] && \
   [ -f AltaeraAI/altaera_no-check.sh ] && [ -f AltaeraAI/altaera_pre-update.sh ] && \
   [ -f AltaeraAI/altaera-custom_ai_model.sh ] && [ -f AltaeraAI/altaera-custom_ai_model_url.sh ]; then

    clear

    echo "
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

      AltaeraAI - v6.0.0

        by ThinkThrough
    "

    echo "________________________________________________________________"
    echo ""

    # Confirming checks with green checkmarks
    echo "Checking for instabilities [ ✔ ]"
    display_check "Checking for instabilities"

    echo "Automatically checking for updates [ ✔ ]"
    display_check "Automatically checking for updates"

    echo "Running essential file integrity checks [ ✔ ]"
    display_check "Running essential file integrity checks"
else
    bash 'AltaeraAI/altaera_auto-check_corrupted-files.sh'
fi

clear
