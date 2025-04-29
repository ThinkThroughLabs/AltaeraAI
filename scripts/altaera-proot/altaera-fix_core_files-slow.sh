echo "Compiling KoboldCpp ...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
mv '/data/data/com.termux/files/home/AltaeraAI-temp' '/data/data/com.termux/files/home/AltaeraAI-tmp'


mkdir 'altaera-temporary'
mv 'kcpp-ae/models' '/data/data/com.termux/files/home/AltaeraAI-tmp'
cp 'kcpp-ae/prompts/chat-with-bob.txt' 'altaera-temporary'
cd '~'
rm -rf 'upgrade.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-proot/upgrade.sh
chmod a+x 'upgrade.sh'
rm -rf 'ngrok-authtoken.sh'
cd 'kcpp-ae'

clear
 if git pull | grep 'Already up to date.'; then
          :
          else
          make
        fi




      cd '~'
      rm -rf 'kcpp-ae_v6.0.4.tar.gz'
} &> /dev/null 2>&1;
