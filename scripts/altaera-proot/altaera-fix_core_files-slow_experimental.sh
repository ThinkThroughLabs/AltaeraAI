echo "Compiling KoboldCpp...

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
if [ -d /root/kcpp-ae ]
then
cd 'kcpp-ae'
rm -rf 'klite.embd'
clear
 if git pull | grep 'Already up to date.'; then
          :
          else
          make LLAMA_OPENBLAS=1
        fi
else
git clone https://github.com/LostRuins/koboldcpp
mv 'koboldcpp' 'kcpp-ae'
cd 'kcpp-ae'
git switch concedo_experimental
make
fi

} &> /dev/null 2>&1;
