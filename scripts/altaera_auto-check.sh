clear

if
         [ $(cat < /dev/null > /dev/tcp/8.8.8.8/53; echo $?
          ) = "0" ]; then
          
        echo "Automatically checking for updates...";

                {
                cd "AltaeraAI"
                wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-version_upstream.sh
                chmod a+x 'altaera-version_upstream.sh'
                cd ..
                } &> /dev/null 2>&1;

if [ $(bash 'AltaeraAI/altaera-version_upstream.sh'
          ) = "v5.2" ]; then
          rm -rf 'AltaeraAI/altaera-version_upstream.sh'
else
          rm -rf 'AltaeraAI/altaera-version_upstream.sh'
          bash 'AltaeraAI/altaera-auto-update_available.sh'
          fi

rm -rf 'AltaeraAI/altaera-version_upstream.sh'
fi

clear

        echo "Automatically checking for updates ✔
        
        ";

        echo "Running essential file integrity checks...

        ";

sleep .5
        
if [[ ! ( -f AltaeraAI/altaera.sh && -f AltaeraAI/altaeralogin.sh && -f AltaeraAI/altaera-update.sh && -f AltaeraAI/altaera-uninstall.sh && -f AltaeraAI/altaera-reinstall.sh && -f /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/altaera.sh && -f /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/benchmark.sh && -f /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/horde.sh ) ]]; then

     clear
        echo "Automatically checking for updates ✔
        
        ";

        echo "Running essential file integrity checks ✔

        ";

sleep .5

 else
     bash 'AltaeraAI/altaera_auto-check_corrupted-files.sh'
 fi

clear
