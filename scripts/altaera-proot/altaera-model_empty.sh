#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - List Models" \
--msgbox 'No models found locally! Please make sure you download some, and try again' 25 40

exit
bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh'
