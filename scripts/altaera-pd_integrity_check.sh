if [ -d /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera ]
then
:
else
dialog --title "AltaeraAI - PRoot Distro installation failure" --msgbox 'There were problems installing the PRoot Distro environment. This can happen, for instance, when some of the mirror servers are down, therefore unable to retrieve some necessary files. In the next step, you will be asked whether to retry PRoot Distro environment installation, or to cancel.' 40 80

{
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-pd_in_failure_reinstall.sh
chmod a+x 'altaera-pd_in_failure_reinstall.sh'
} &> /dev/null 2>&1;
bash 'altaera-pd_in_failure_reinstall.sh'
rm -rf 'altaera-pd_in_failure_reinstall.sh'
fi
