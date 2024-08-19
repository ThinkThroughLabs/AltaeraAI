#!/bin/bash

##termux-change-repo

clear
            echo "

        ██████████
       ██ █
      ██  █
     ██   █
     █    ████████
    ██    █
   ████████
  ██      █
  █       ████████

  AltaeraAI - v5.6

    by ThinkThroughLabs


  "


echo "Welcome!

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Before we install...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "
Notice: AltaeraAI periodically undergoes heavy changes that can disrupt the installation process. If this disruption occurs, please try the installation a little later.
"

echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "[If you wish to stop the installation, press 'Ctrl+D']

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "
~~~~~~~~~~~~~~~~~~~~~~~~~~
Beginning installation in:
~~~~~~~~~~~~~~~~~~~~~~~~~~
"

echo "
6...
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
sleep 1
echo "
5...
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
sleep 1
echo "
5...
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
sleep 1
echo "
4...
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
sleep 1
echo "
3...
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
sleep 1
echo "
2...
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
sleep 1
echo "
1...
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
sleep 1

clear

            echo "
  _____                      
 |_   _|__ _ _ _ __ _  ___ __
   | |/ -_) '_| '  \ || \ \ /
   |_|\___|_| |_|_|_\_,_/_\_\                
                                    
  Installing Termux dependencies...


  "

echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Updating Termux apt repositories' mirrors...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
cd '/data/data/com.termux/files/usr/etc/apt'
rm 'sources.list'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/termux/sources.list
cd
} &> /dev/null 2>&1;

clear

            echo "
  _____                      
 |_   _|__ _ _ _ __ _  ___ __
   | |/ -_) '_| '  \ || \ \ /
   |_|\___|_| |_|_|_\_,_/_\_\    
                                    
  Installing Termux dependencies...


  "

echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Updating Termux apt repositories' mirrors ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing Termux Activity Manager...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
pkg install termux-am
} &> /dev/null 2>&1;
clear
termux-setup-storage

clear

            echo "
  _____                      
 |_   _|__ _ _ _ __ _  ___ __
   | |/ -_) '_| '  \ || \ \ /
   |_|\___|_| |_|_|_\_,_/_\_\    
                                    
  Installing Termux dependencies...


  "

echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Updating Termux apt repositories' mirrors ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing Termux Activity Manager ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing necessary Termux packages...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
apt update && apt -o DPkg::Options::="--force-confnew" -y upgrade
apt-get -o DPkg::Options::="--force-confnew" -y install openssl-1.1 wget
pkg install wget curl proot-distro -y
} &> /dev/null 2>&1;

clear

            echo "
  _____                      
 |_   _|__ _ _ _ __ _  ___ __
   | |/ -_) '_| '  \ || \ \ /
   |_|\___|_| |_|_|_\_,_/_\_\    
                                    
  Installing Termux dependencies...


  "

echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Updating Termux apt repositories' mirrors ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing Termux Activity Manager ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing necessary Termux packages ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Removing previous AltaeraAI files [if there are any]...

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
proot-distro remove altaera
} &> /dev/null 2>&1;

rm -rf 'AltaeraAI-tmp'
rm -rf 'AltaeraAI'
mkdir 'AltaeraAI-tmp'
mkdir 'AltaeraAI-tmp/models'
mkdir 'AltaeraAI'

clear

            echo "
  _____                      
 |_   _|__ _ _ _ __ _  ___ __
   | |/ -_) '_| '  \ || \ \ /
   |_|\___|_| |_|_|_\_,_/_\_\    
                                    
  Installing Termux dependencies...


  "

echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Updating Termux apt repositories' mirrors ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing Termux Activity Manager ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Installing necessary Termux packages ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

echo "Removing previous AltaeraAI files [if there are any] ✔

" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

sleep 0.5

ae

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=6
BACKTITLE="AltaeraAI Installation - Language Settings"
TITLE="AI Conversation Language - Prompt Tuning"
MENU="Which language will you use when talking to AI? [You can also change this setting later]:"

OPTIONS=(1 "English [Default]"
         2 "中国"
         3 "Deutsch"
         4 "Español"
         5 "Français"
         6 "Italiano"
         7 "한국어"
         8 "日本語"
         9 "Polski"
         10 "Português"
         11 "Русский"
         12 "Українська")


CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)
                
                
clear
case $CHOICE in
        1)
        
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_model.sh -q --show-progress
chmod a+x 'altaera_install_model.sh'
bash 'altaera_install_model.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-2.sh -q --show-progress
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
clear
if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
{
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/pd-in.sh
} &> /dev/null 2>&1;
chmod a+x 'pd-in.sh'
bash 'pd-in.sh'
else
:
fi

echo "Moving the AI model and prompt file into proper directory...";

{
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt'
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/models' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
clear
} &> /dev/null 2>&1;

echo "Cleaning up File System...";

{
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-1.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf 'altaera-install_method.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_model.sh'
rm -rf '/data/data/com.termux/files/home/install'
rm -rf '/data/data/com.termux/files/home/pd-in.sh'
clear
} &> /dev/null 2>&1;

if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
{
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/pd-login.sh
} &> /dev/null 2>&1;
chmod a+x 'pd-login.sh'
bash 'pd-login.sh'
else
:
fi
clear

{
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-pd_integrity_check.sh
chmod a+x 'altaera-pd_integrity_check.sh'
} &> /dev/null 2>&1;
bash 'altaera-pd_integrity_check.sh'
rm -rf 'altaera-pd_integrity_check.sh'
rm -rf '/data/data/com.termux/files/home/pd-login.sh'

echo "**********INSTALLATION COMPLETED**********
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
echo "
      !!!  - Press 'CTRL+D' once again  !!!

      --- Then, open Termux and:
      
- To start, please type in 'ae'."
echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
;;

         2)
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_model.sh -q --show-progress
chmod a+x 'altaera_install_model.sh'
bash 'altaera_install_model.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-2-chn.sh -O 'altaera_install_pt-2.sh' -q --show-progress
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro install altaera
else
:
fi

echo "Moving the AI model and prompt file into proper directory...";

{
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt'
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/models' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
clear
} &> /dev/null 2>&1;

echo "Cleaning up File System...";

{
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-1.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf 'altaera-install_method.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_model.sh'
rm -rf '/data/data/com.termux/files/home/install'
clear
} &> /dev/null 2>&1;

if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro login altaera
else
:
fi
clear
echo "

              **********INSTALLATION COMPLETED**********
_______________________________________________________________________


- To start, please type in 'ae'.


_______________________________________________________________________
"
;;
         3)
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_model.sh -q --show-progress
chmod a+x 'altaera_install_model.sh'
bash 'altaera_install_model.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-2-ger.sh -O 'altaera_install_pt-2.sh' -q --show-progress
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro install altaera
else
:
fi

echo "Moving the AI model and prompt file into proper directory...";

{
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt'
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/models' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
clear
} &> /dev/null 2>&1;

echo "Cleaning up File System...";

{
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-1.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf 'altaera-install_method.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_model.sh'
rm -rf '/data/data/com.termux/files/home/install'
clear
} &> /dev/null 2>&1;

if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro login altaera
else
:
fi
clear
echo "

              **********INSTALLATION COMPLETED**********
_______________________________________________________________________


      !!!  - Press 'CTRL+D' once again  !!!

      
      --- Then, open Termux and:


- To start, please type in 'ae'.


_______________________________________________________________________
"
;;
         4)
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_model.sh -q --show-progress
chmod a+x 'altaera_install_model.sh'
bash 'altaera_install_model.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-2-spa.sh -O 'altaera_install_pt-2.sh' -q --show-progress
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro install altaera
else
:
fi

echo "Moving the AI model and prompt file into proper directory...";

{
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt'
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/models' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
clear
} &> /dev/null 2>&1;

echo "Cleaning up File System...";

{
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-1.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf 'altaera-install_method.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_model.sh'
rm -rf '/data/data/com.termux/files/home/install'
clear
} &> /dev/null 2>&1;

if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro login altaera
else
:
fi
clear
echo "

              **********INSTALLATION COMPLETED**********
_______________________________________________________________________


      !!!  - Press 'CTRL+D' once again  !!!

      
      --- Then, open Termux and:


- To start, please type in 'ae'.


_______________________________________________________________________
"
;;
         5)
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_model.sh -q --show-progress
chmod a+x 'altaera_install_model.sh'
bash 'altaera_install_model.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-2-fr.sh -O 'altaera_install_pt-2.sh' -q --show-progress
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro install altaera
else
:
fi

echo "Moving the AI model and prompt file into proper directory...";

{
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt'
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/models' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
clear
} &> /dev/null 2>&1;

echo "Cleaning up File System...";

{
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-1.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf 'altaera-install_method.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_model.sh'
rm -rf '/data/data/com.termux/files/home/install'
clear
} &> /dev/null 2>&1;

if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro login altaera
else
:
fi
clear
echo "

              **********INSTALLATION COMPLETED**********
_______________________________________________________________________


      !!!  - Press 'CTRL+D' once again  !!!

      
      --- Then, open Termux and:


- To start, please type in 'ae'.


_______________________________________________________________________
"
;;
         6)
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_model.sh -q --show-progress
chmod a+x 'altaera_install_model.sh'
bash 'altaera_install_model.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-2-it.sh -O 'altaera_install_pt-2.sh' -q --show-progress
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro install altaera
else
:
fi

echo "Moving the AI model and prompt file into proper directory...";

{
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt'
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/models' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
clear
} &> /dev/null 2>&1;

echo "Cleaning up File System...";

{
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-1.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf 'altaera-install_method.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_model.sh'
rm -rf '/data/data/com.termux/files/home/install'
clear
} &> /dev/null 2>&1;

if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro login altaera
else
:
fi
clear
echo "

              **********INSTALLATION COMPLETED**********
_______________________________________________________________________


      !!!  - Press 'CTRL+D' once again  !!!

      
      --- Then, open Termux and:


- To start, please type in 'ae'.


_______________________________________________________________________
"
;;
         7)
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_model.sh -q --show-progress
chmod a+x 'altaera_install_model.sh'
bash 'altaera_install_model.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-2-krn.sh -O 'altaera_install_pt-2.sh' -q --show-progress
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro install altaera
else
:
fi

echo "Moving the AI model and prompt file into proper directory...";

{
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt'
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/models' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
clear
} &> /dev/null 2>&1;

echo "Cleaning up File System...";

{
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-1.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf 'altaera-install_method.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_model.sh'
rm -rf '/data/data/com.termux/files/home/install'
clear
} &> /dev/null 2>&1;

if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro login altaera
else
:
fi
clear
echo "

              **********INSTALLATION COMPLETED**********
_______________________________________________________________________


      !!!  - Press 'CTRL+D' once again  !!!

      
      --- Then, open Termux and:


- To start, please type in 'ae'.


_______________________________________________________________________
"
;;
         8)
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_model.sh -q --show-progress
chmod a+x 'altaera_install_model.sh'
bash 'altaera_install_model.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-2-jpn.sh -O 'altaera_install_pt-2.sh' -q --show-progress
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro install altaera
else
:
fi

echo "Moving the AI model and prompt file into proper directory...";

{
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt'
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/models' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
clear
} &> /dev/null 2>&1;

echo "Cleaning up File System...";

{
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-1.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf 'altaera-install_method.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_model.sh'
rm -rf '/data/data/com.termux/files/home/install'
clear
} &> /dev/null 2>&1;

if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro login altaera
else
:
fi
clear
echo "

              **********INSTALLATION COMPLETED**********
_______________________________________________________________________


      !!!  - Press 'CTRL+D' once again  !!!

      
      --- Then, open Termux and:


- To start, please type in 'ae'.


_______________________________________________________________________
"
;;
         9)
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_model.sh -q --show-progress
chmod a+x 'altaera_install_model.sh'
bash 'altaera_install_model.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-2-pol.sh -O 'altaera_install_pt-2.sh' -q --show-progress
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro install altaera
else
:
fi

echo "Moving the AI model and prompt file into proper directory...";

{
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt'
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/models' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
clear
} &> /dev/null 2>&1;

echo "Cleaning up File System...";

{
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-1.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf 'altaera-install_method.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_model.sh'
rm -rf '/data/data/com.termux/files/home/install'
clear
} &> /dev/null 2>&1;

if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro login altaera
else
:
fi
clear
echo "

              **********INSTALLATION COMPLETED**********
_______________________________________________________________________


      !!!  - Press 'CTRL+D' once again  !!!

      
      --- Then, open Termux and:


- To start, please type in 'ae'.


_______________________________________________________________________
"
;;
         10)
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_model.sh -q --show-progress
chmod a+x 'altaera_install_model.sh'
bash 'altaera_install_model.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-2-por.sh -O 'altaera_install_pt-2.sh' -q --show-progress
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro install altaera
else
:
fi

echo "Moving the AI model and prompt file into proper directory...";

{
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt'
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/models' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
clear
} &> /dev/null 2>&1;

echo "Cleaning up File System...";

{
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-1.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf 'altaera-install_method.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_model.sh'
rm -rf '/data/data/com.termux/files/home/install'
clear
} &> /dev/null 2>&1;

if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro login altaera
else
:
fi
clear
echo "

              **********INSTALLATION COMPLETED**********
_______________________________________________________________________


      !!!  - Press 'CTRL+D' once again  !!!

      
      --- Then, open Termux and:


- To start, please type in 'ae'.


_______________________________________________________________________
"
;;
         11)
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_model.sh -q --show-progress
chmod a+x 'altaera_install_model.sh'
bash 'altaera_install_model.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-2-rus.sh -O 'altaera_install_pt-2.sh' -q --show-progress
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro install altaera
else
:
fi

echo "Moving the AI model and prompt file into proper directory...";

{
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt'
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/models' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
clear
} &> /dev/null 2>&1;

echo "Cleaning up File System...";

{
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-1.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf 'altaera-install_method.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_model.sh'
rm -rf '/data/data/com.termux/files/home/install'
clear
} &> /dev/null 2>&1;

if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro login altaera
else
:
fi
clear
echo "

              **********INSTALLATION COMPLETED**********
_______________________________________________________________________


      !!!  - Press 'CTRL+D' once again  !!!                                        !!!

      
      --- Then, open Termux and:


- To start, please type in 'ae'.


_______________________________________________________________________
"
;;
         12)
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_model.sh -q --show-progress
chmod a+x 'altaera_install_model.sh'
bash 'altaera_install_model.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera_install_pt-2-ukr.sh -O 'altaera_install_pt-2.sh' -q --show-progress
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-install_method.sh -q --show-progress
chmod a+x 'altaera-install_method.sh'
bash 'altaera-install_method.sh'
if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro install altaera
else
:
fi

echo "Moving the AI model and prompt file into proper directory...";

{
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/chat-with-bob.txt' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/kcpp-ae/prompts/chat-with-bob.txt'
mv '/data/data/com.termux/files/home/AltaeraAI-tmp/models' '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root'
clear
} &> /dev/null 2>&1;

echo "Cleaning up File System...";

{
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-1.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_pt-2.sh'
rm -rf 'altaera-install_method.sh'
rm -rf '/data/data/com.termux/files/home/altaera_install_model.sh'
rm -rf '/data/data/com.termux/files/home/install'
clear
} &> /dev/null 2>&1;

if [ -f $PREFIX/etc/proot-distro/altaera.sh ]
then
proot-distro login altaera
else
:
fi
clear
echo "

              **********INSTALLATION COMPLETED**********
_______________________________________________________________________


      !!!  - Press 'CTRL+D' once again  !!!

      
      --- Then, open Termux and:


- To start, please type in 'ae'.


_______________________________________________________________________
"
;;

esac
