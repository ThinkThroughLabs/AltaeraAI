#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Changelog [CLI]" \
--msgbox '
    * v5.1.2 - fixed the issue regarding the pre-packaged KoboldCpp not being downloaded after switching to an organisational repository
    * added a pre-launch check (when starting KoboldCpp) to see if the KoboldCpp directory exists in PRoot Distro; if not, the user will be asked whether to download or compile it
    * v5.1.1 - shifted the projects main GitHub repository into an organisational one (ThinkThroughLabs). This upgrade does not bring any functionalities, its sole purpose is to redirect local AltaeraAI update mechanisms to a new address
    * v5.1 - updated to koboldcpp-1.67
    * added "aef", "aeforce" and "altaeraforce" arguments to the "bash.bashrc" file, which allow the user to launch AltaeraAI without the automatic update checking mechanism, in case there is a start-up problem, i.e., poor network connectivity
    * v5.0 - updated to koboldcpp-1.66.1
    * visual fixes and improvements to Model MENUS
    * v4.9.6 - added Phi-SoSerious-Mini-V1/imatrix weights to the list of models
' 100 100

exit
