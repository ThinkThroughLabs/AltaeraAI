#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Update" \
--msgbox 'AltaeraAI has been updated succesfully!


Recent changes:

    * v5.2.3 - introduced "File integrity checks", which run simultaneously with the update checking mechanism, to determine potential file deficiences that can impact AltaeraAIs functionality; in case there are missing files, the user will be asked whether to carry out file repair. Said functionality is set by default (as are automatic update checks), but can also be disabled under settings
    * visual fixes and improvements, changes to the MENU
    * v5.2 – updated to koboldcpp-1.68
    * added the “Horde” option to the MENU, which utilises AI Horde to allow for sharing your processing power (an AI Model) for users worldwide
    * minor aesthetic changes and fixes to the MENU
    * v5.1.2 - fixed the issue regarding pre-packaged KoboldCpp not being downloaded after switching to an organisational repository
    * added a pre-launch check (when starting KoboldCpp) to see if the KoboldCpp directory exists in PRoot Distro; if not, the user will be asked whether to download or compile it
    * v5.1.1 - shifted the projects main GitHub repository into an organisational one (ThinkThroughLabs). This upgrade does not bring any functionalities, its sole purpose is to redirect local AltaeraAI update mechanisms to a new address
    * v5.1 - updated to koboldcpp-1.67
    * added "aef", "aeforce" and "altaeraforce" arguments to the "bash.bashrc" file, which allow the user to launch AltaeraAI without the automatic update checking mechanism, in case there is a start-up problem, i.e., poor network connectivity
' 25 40

bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh'
