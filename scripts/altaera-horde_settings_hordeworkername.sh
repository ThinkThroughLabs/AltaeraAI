cat altaera-horde_settings_hordeworkername.sh
!/bin/bash

# Redirecting dialog box output to a temporary stream
exec 3>&1  # Save the place that stdout (1) points to
result=$(dialog --title "Input Required" --inputbox "Enter your Horde Worker Name:" 10 30 2>&1 >/dev/tty)
exec 3>&-  # Close the temporary stream

            cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
            sed -i '/--hordeworkername/c\--hordeworkername $result' horde.sh
            cd '/data/data/com.termux/files/home'
