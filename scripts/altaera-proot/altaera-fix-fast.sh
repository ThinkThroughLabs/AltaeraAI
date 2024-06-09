echo "Fixing AltaeraAI core files...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
mv '/data/data/com.termux/files/home/AltaeraAI-temp' '/data/data/com.termux/files/home/AltaeraAI-tmp'


mkdir '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/altaera-temporary'
mv '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/models' '/data/data/com.termux/files/home/AltaeraAI-tmp'
cp '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/altaera-temporary'
cd '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
rm -rf '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae'
rm -rf 'upgrade.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/upgrade.sh
chmod a+x 'upgrade.sh'
rm -rf 'ngrok-authtoken.sh'
wget https://github.com/ThinkThroughLabs/AltaeraAI/releases/download/v5.1/altaera-v5.1.tar.gz
tar -xf 'altaera-v5.1.tar.gz'
cd 'kcpp-ae'
rm -rf 'models'
rm -rf 'klite.embd'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/klite/klite.embd
      cd ..
      cd 'kcpp-ae_cm'
      rm -rf 'klite.embd'
      wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/klite/klite.embd
