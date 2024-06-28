#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Update" \
--msgbox 'AltaeraAI has been updated succesfully!


Recent changes:

    * v5.2.3 - fixed a bug in the file integrity checking mechanism that reported missing files even when they were not missing (especially after a fresh installation)
    * added an initial solution to when the PRoot Distro environment fails to install, during the installation process
    * v5.2.2 - added the ability to enter a custom value for Context & Blas Batch Size, in addition to the fixed sizes
    * various visual improvements and fixes to the MENU
    * v5.2.1 - introduced "File integrity checks", which run simultaneously with the update checking mechanism, to determine potential file deficiences that can impact AltaeraAIs functionality; in case there are missing files, the user will be asked whether to carry out file repair. Said functionality is set by default (as are automatic update checks), but can also be disabled under settings
    * visual fixes and improvements, changes to the MENU
    * v5.2 – updated to koboldcpp-1.68
    * added the “Horde” option to the MENU, which utilises AI Horde to allow for sharing your processing power (an AI Model) for users worldwide
    * minor aesthetic changes and fixes to the MENU
    * v5.1.2 - fixed the issue regarding pre-packaged KoboldCpp not being downloaded after switching to an organisational repository
    * added a pre-launch check (when starting KoboldCpp) to see if the KoboldCpp directory exists in PRoot Distro; if not, the user will be asked whether to download or compile it
' 25 40

bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh'
