echo "Installing KoboldCpp ...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
mv '/data/data/com.termux/files/home/AltaeraAI-temp' '/data/data/com.termux/files/home/AltaeraAI-tmp'


mkdir 'altaera-temporary'
mv 'kcpp-ae/models' '/data/data/com.termux/files/home/AltaeraAI-tmp'
cp 'kcpp-ae/prompts/chat-with-bob.txt' 'altaera-temporary'
cd '~'
rm -rf 'kcpp-ae'
rm -rf 'upgrade.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/upgrade.sh
chmod a+x 'upgrade.sh'
rm -rf 'ngrok-authtoken.sh'
wget https://github.com/ThinkThroughLabs/AltaeraAI/releases/download/kcpp-ae_v6.0.4/kcpp-ae_v6.0.4.tar.gz
tar -xf 'kcpp-ae_v6.0.4.tar.gz'



      cd '~'
      rm -rf 'kcpp-ae_v6.0.4.tar.gz'
} &> /dev/null 2>&1;
