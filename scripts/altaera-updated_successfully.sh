#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Update" \
--msgbox 'AltaeraAI has been updated succesfully!


Recent changes:

    * v5.7.4.2 - Hotfix: fixed code mistakes related to the "Manage AI Back-ends" option
    * v5.7.4.1 - Hotfix: fixed the issue related to the new version of pre-packaged KoboldCpp not being recognised as an update
    * v5.7.4 - updated the pre-packaged KoboldCpp to v1.73.1
    * added initial SillyTavern support
    * added "Manage AI Back-ends" to the MENU
    * v5.7.3 - updated the pre-packaged KoboldCpp to v1.73
    * a mechanism has been added so that when updating AltaeraAI, the pre-packaged KoboldCpp will update only if it was previously installed
    * added ability to use “maid” as an external front-end for ollama
    * various fixes and expanded ollama support
    * v5.7.2 – added initial ollama support
    * v5.7.1 - added Gemma-2-2B-it and Gemma-2-2B-it-abliterated weights to the list of models
' 25 40

bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh'
