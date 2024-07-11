#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Update" \
--msgbox 'AltaeraAI has been updated succesfully!


Recent changes:

    * v5.4.1 - added an automatic Termux update check, which will inform the user of an available update and allow the user choose whether Termux was initially downloaded from GitHub or from F-Droid to further proceed (this is necessary for the update to actually work)
    * v5.4 - updated to koboldcpp-1.69.1
    * added Gemma-2-9B-it weights to the list of models
    * v5.3 - updated to koboldcpp-1.69
    * v5.2.3 - fixed a bug in the file integrity checking mechanism that reported missing files even when they were not (especially after a fresh installation)
    * added an initial solution to when the PRoot Distro environment fails to install, during the installation process
    * v5.2.2 - added the ability to enter a custom value for Context & Blas Batch Size, in addition to the fixed sizes
    * various visual improvements and fixes to the MENU
' 25 40

bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh'
