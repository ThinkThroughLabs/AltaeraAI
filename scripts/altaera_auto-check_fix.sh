cd '/data/data/com.termux/files/home/AltaeraAI'

rm -rf 'altaera.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera.sh
chmod a+x 'altaera.sh'
rm -rf 'altaeralogin.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaeralogin.sh
chmod a+x 'altaeralogin.sh'
rm -rf 'altaera-uninstall.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-uninstall.sh
chmod a+x 'altaera-uninstall.sh'
rm -rf 'altaera-reinstall.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-reinstall.sh
chmod a+x 'altaera-reinstall.sh'

cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/'
rm -rf 'altaera.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/altaera.sh
chmod a+x 'altaera.sh'
rm -rf 'benchmark.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/benchmark.sh
chmod a+x 'benchmark.sh'
rm -rf 'horde.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/horde.sh
chmod a+x 'horde.sh'

cd ~
