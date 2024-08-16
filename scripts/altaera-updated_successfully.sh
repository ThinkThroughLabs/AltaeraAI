#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Update" \
--msgbox 'AltaeraAI has been updated succesfully!


Recent changes:

    * v5.7.2 - added Gemma-2-2B-it and Gemma-2-2B-it-abliterated weights to the list of models
    * v5.7 - updated to koboldcpp-1.72
    * re-written the installation script to be more automated and user friendly, added visual enhancements and fixed bugs related to it
    * v5.6 - updated to koboldcpp-1.71.1
    * v5.5.2 - fixed a bug that caused the “Functional Status” check to always inform the user of technical difficulties
    * v5.5.1 - a “Functional Status” check has been added, which will notify the user of ongoing technical difficulties (as determined by the repository owner) that may occur for users who have recently installed or upgraded AltaerAI, due to its rolling-release lifecycle
' 25 40

bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh'
