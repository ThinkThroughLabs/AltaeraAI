# Spinner function (fixed and tested)
spin() {
    local -r pid="$1"
    local delay=0.1
    local chars='|/-\\'
    tput civis
    while kill -0 "$pid" 2>/dev/null; do
        for ((i=0; i<${#chars}; i++)); do
            printf " [%c]  " "${chars:i:1}"
            sleep $delay
            printf "\b\b\b\b\b\b"
        done
    done
    tput cnorm
}

# Optional check_status for fake steps (short tasks)
check_status() {
    echo -n "$1" | pv -qL 150
    tput el
    (sleep .2) &
    local pid=$!
    spin "$pid"
    wait "$pid"
    tput setaf 2
    echo -n " [ ✔ ]"
    tput sgr0
    echo
}

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

  AltaeraAI - v6.0.3

    by ThinkThrough
"

echo "________________________________________________________________
" | sed -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

# Check for instabilities

check_status "Checking for instabilities "

                {
                cd "AltaeraAI"
                wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-functional_status.sh
                chmod a+x 'altaera-functional_status.sh'
                cd ..
                } &> /dev/null 2>&1;
                
if [ $(bash 'AltaeraAI/altaera-functional_status.sh'
) = "true" ]; then
    rm 'AltaeraAI/altaera-functional_status.sh'
else
    rm 'AltaeraAI/altaera-functional_status.sh'
    dialog --backtitle "AltaeraAI" \
        --title "AltaeraAI - Technical Difficulties" \
        --msgbox 'AltaeraAI is experiencing malfunctions at this very moment. If you have recently downloaded or updated it, chances are some things will be broken. Please, give us some time to carry out code repairs. Sorry for the inconvenience!' 10 45
fi

# Check for Internet connectivity
##if
##         [ $(cat < /dev/null > /dev/tcp/8.8.8.8/53; echo $?
##          ) = "0" ]; then
##    :
##else
##    echo "No internet connection detected. Retrying..."
##    while [ $(cat < /dev/null > /dev/tcp/8.8.8.8/53; echo $?) != "0" ]; do
##        sleep 5
##        echo -n "."
##    done
##    echo -e "[\033[0;32m✔\033[0m]"
##fi

# Automatically checking for updates
check_status "Automatically checking for updates "

{
    cd "AltaeraAI"
    wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-version_upstream.sh
    chmod a+x 'altaera-version_upstream.sh'
    cd ..
    } &> /dev/null 2>&1;

version_upstream=$(bash 'AltaeraAI/altaera-version_upstream.sh')
if [ "$version_upstream" = "v6.0.3" ]; then
rm -rf 'AltaeraAI/altaera-version_upstream.sh'
else
rm -rf 'AltaeraAI/altaera-version_upstream.sh'
bash 'AltaeraAI/altaera-auto-update_available.sh'
fi
    
#version_termux=$(bash 'AltaeraAI/altaera_termux-version.sh')
#if [ "$version_termux" = "0.118.1" ]; then
#    :
#else
#    bash 'AltaeraAI/altaera-auto-update_available-termux.sh'
#fi
#fi

# Clean up files after checks
{
rm -rf 'AltaeraAI/altaera-version_upstream.sh'
rm -rf '/sdcard/com.termux_118.1.apk'
} &> /dev/null 2>&1;

# Running essential file integrity checks
check_status "Running essential file integrity checks "
sleep .2

# Placeholder for actual file integrity checks
if [ -f /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/altaera.sh ] && [ -f /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/benchmark.sh ] && [ -f /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/horde.sh ] && [ -f AltaeraAI/altaera.sh ] && [ -f AltaeraAI/altaeralogin.sh ] && [ -f AltaeraAI/altaera-update.sh ] && [ -f AltaeraAI/altaera-uninstall.sh ] && [ -f AltaeraAI/altaera-reinstall.sh ] && [ -f AltaeraAI/altaera-auto-update_available.sh ] && [ -f AltaeraAI/altaera-changelog_cli.sh ] && [ -f AltaeraAI/altaera-check_for_updates.sh ] && [ -f AltaeraAI/altaera-customer_support.sh ] && [ -f AltaeraAI/altaera-force_update.sh ] && [ -f AltaeraAI/altaera-horde.sh ] && [ -f AltaeraAI/altaera-horde_settings.sh ] && [ -f AltaeraAI/altaera-horde_settings_hordekey.sh ] && [ -f AltaeraAI/altaera-horde_settings_hordemodelname.sh ] && [ -f AltaeraAI/altaera-horde_settings_hordeworkername.sh ] && [ -f AltaeraAI/altaera-koboldcpp_settings.sh ] && [ -f AltaeraAI/altaera-koboldcpp_settings_blasbatchsize.sh ] && [ -f AltaeraAI/altaera-koboldcpp_settings_contextsize.sh ] && [ -f AltaeraAI/altaera-koboldcpp_settings_flashattention.sh ] && [ -f AltaeraAI/altaera-lang.sh ] && [ -f AltaeraAI/altaera-manage_models.sh ] && [ -f AltaeraAI/altaera-model.sh ] && [ -f AltaeraAI/altaera-model_backup-restore.sh ] && [ -f AltaeraAI/altaera-model_remove.sh ] && [ -f AltaeraAI/altaera-model_restore.sh ] && [ -f AltaeraAI/altaera-ngrok-configuration.sh ] && [ -f AltaeraAI/altaera-ngrok-on.sh ] && [ -f AltaeraAI/altaera-ngrok.sh ] && [ -f AltaeraAI/altaera-settings.sh ] && [ -f AltaeraAI/altaera-settings_auto_updates.sh ] && [ -f AltaeraAI/altaera-settings_dialog_theme.sh ] && [ -f AltaeraAI/altaera-uninstall.sh ] && [ -f AltaeraAI/altaera-up_to_date.sh ] && [ -f AltaeraAI/altaera-update-proot.sh ] && [ -f AltaeraAI/altaera-update-proot.sh ] && [ -f AltaeraAI/altaera-update_available.sh ] && [ -f AltaeraAI/altaera-updated_successfully.sh ] && [ -f AltaeraAI/altaera_no-check.sh ] && [ -f AltaeraAI/altaera_pre-update.sh ] && [ -f AltaeraAI/altaera-custom_ai_model.sh ] && [ -f AltaeraAI/altaera-custom_ai_model_url.sh ]
then

    sleep .2
    
else
    
    sleep .5
    
    bash 'AltaeraAI/altaera_auto-check_corrupted-files.sh'
fi

clear
