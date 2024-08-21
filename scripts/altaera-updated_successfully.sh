#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Update" \
--msgbox 'AltaeraAI has been updated succesfully!


Recent changes:

    * v5.7.3 - updated the pre-packaged KoboldCpp to v1.73
    * a mechanism has been added so that when updating AltaeraAI, the pre-packaged KoboldCpp will update only if it was previously installed
    * added ability to use “maid” as an external front-end for ollama
    * various fixes and expanded ollama support
    * v5.7.2 – added initial ollama support
    * v5.7.1 - added Gemma-2-2B-it and Gemma-2-2B-it-abliterated weights to the list of models
    * v5.7 - updated to koboldcpp-1.72
    * re-written the installation script to be more automated and user friendly, added visual enhancements and fixed bugs related to it
    * v5.6 - updated to koboldcpp-1.71.1
' 25 40

bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh'
