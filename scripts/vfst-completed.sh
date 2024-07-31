echo "**********INSTALLATION COMPLETED**********
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);
echo "
      !!!  - Please, pull down the notification bar, expand 'Termux' and press 'Exit'  !!!
      !!!  - Or, press 'CTRL+D' twice.                                                !!!

      --- Then, open Termux and:
      
- To start, please type in 'ae'.

            [Please, ignore the 'ERROR' below if it shows up]"
echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

rm 'data/data/com.termux/files/home/AltaeraAI/very_fast-tmp.sh'
exec <&-
