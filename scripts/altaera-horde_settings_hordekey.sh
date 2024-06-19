cat altaera-horde_settings_hordekey.sh
!/bin/bash

# Redirecting dialog box output to a temporary stream
exec 3>&1  # Save the place that stdout (1) points to
result=$(dialog --title "Input Required" --inputbox "Enter your Horde Key:" 10 30 2>&1 >/dev/tty)
exec 3>&-  # Close the temporary stream

            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--hordekey/c\--hordekey $result \\' horde.sh
            cd '/data/data/com.termux/files/home'
