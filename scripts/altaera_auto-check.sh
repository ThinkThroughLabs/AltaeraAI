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
          ) = "v5.2.2" ]; then
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
        
if [ -f /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/altaera.sh ] && [ -f /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/benchmark.sh ] && [ -f /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/horde.sh ] && [ -f AltaeraAI/altaera.sh ] && [ -f AltaeraAI/altaeralogin.sh ] && [ -f AltaeraAI/altaera-update.sh ] && [ -f AltaeraAI/altaera-uninstall.sh ] && [ -f AltaeraAI/altaera-reinstall.sh ] && [ -f AltaeraAI/altaera-auto-update_available.sh    ] && [ -f AltaeraAI/altaera-changelog_cli.sh ] && [ -f AltaeraAI/altaera-check_for_updates.sh ] && [ -f AltaeraAI/altaera-customer_support.sh ] && [ -f AltaeraAI/altaera-force_update.sh ] && [ -f AltaeraAI/altaera-horde.sh ] && [ -f AltaeraAI/altaera-horde_settings.sh ] && [ -f AltaeraAI/altaera-horde_settings_hordekey.sh ] && [ -f AltaeraAI/altaera-horde_settings_hordemodelname.sh ] && [ -f AltaeraAI/altaera-horde_settings_hordeworkername.sh ] && [ -f AltaeraAI/altaera-koboldcpp_settings.sh ] && [ -f AltaeraAI/altaera-koboldcpp_settings_blasbatchsize.sh ] && [ -f AltaeraAI/altaera-koboldcpp_settings_contextsize.sh ] && [ -f AltaeraAI/altaera-koboldcpp_settings_flashattention.sh ] && [ -f AltaeraAI/altaera-lang.sh ] && [ -f AltaeraAI/altaera-manage_models.sh ] && [ -f AltaeraAI/altaera-model.sh ] && [ -f AltaeraAI/altaera-model_backup-restore.sh ] && [ -f AltaeraAI/altaera-model_remove.sh ] && [ -f AltaeraAI/altaera-model_restore.sh ] && [ -f AltaeraAI/altaera-ngrok-configuration.sh ] && [ -f AltaeraAI/altaera-ngrok-on.sh ] && [ -f AltaeraAI/altaera-ngrok.sh ] && [ -f AltaeraAI/altaera-settings.sh ] && [ -f AltaeraAI/altaera-settings_auto_updates.sh ] && [ -f AltaeraAI/altaera-settings_dialog_theme.sh ] && [ -f AltaeraAI/altaera-uninstall.sh ] && [ -f AltaeraAI/altaera-up_to_date.sh ] && [ -f AltaeraAI/altaera-update-proot.sh ] && [ -f AltaeraAI/altaera-update-proot.sh ] && [ -f AltaeraAI/altaera-update_available.sh ] && [ -f AltaeraAI/altaera-updated_successfully.sh ] && [ -f AltaeraAI/altaera_auto-check.sh ] && [ -f AltaeraAI/altaera_no-check.sh ] && [ -f AltaeraAI/altaera_pre-update.sh ] && [ -f AltaeraAI/altaera-custom_ai_model.sh ] && [ -f AltaeraAI/altaera-custom_ai_model_url.sh ]
then

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
