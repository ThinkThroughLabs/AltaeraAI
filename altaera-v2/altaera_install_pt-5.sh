echo "Installing dependencies...";

{
cd 'prompts'
rm -rf 'chat-with-bob.txt'
wget https://raw.githubusercontent.com/latestissue/altaera-packages.github.io/main/altaera-v2/altaera-debian/prompts/chat-with-bob.txt
cd /root
apt install clang python3 libclblast-dev libopenblas-dev -y
} &> /dev/null 2>&1;
clear
echo "

              **********INSTALLATION COMPLETED**********
_______________________________________________________________________


      !!!  Please press ENTER now to restart Termux  !!!

      
      --- Then, open Termux and:


- To start, please type in 'ae'.


_______________________________________________________________________

(IGNORE the text on the bottom)
              |
              v
              "
exit
