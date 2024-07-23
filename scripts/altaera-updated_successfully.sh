#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Update" \
--msgbox 'AltaeraAI has been updated succesfully!


Recent changes:

    * v5.5.1 - a “Functional Status” check has been added, which will notify the user of ongoing technical difficulties (as determined by the repository owner) that may occur for users who have recently installed or upgraded AltaerAI, due to its rolling-release lifecycle
    * v5.5 - updated to koboldcpp-1.70.1
    * v5.4.2 - a "very fast" installation method has been introduced that drastically shortens the process. It uses a pre-packaged PRoot-Distro environment, instead of installing it from scratch, and restores it in a backup form. It is now a default installation method
    * v5.4.1 - added an automatic Termux update check, which will inform the user of an available update and allow the user to choose whether Termux was initially downloaded from GitHub or from F-Droid to further proceed (this is necessary for the update to actually work). This functionality is set by default (as are automatic update & file integrity checks), but can also be disabled under settings
    * v5.4 - updated to koboldcpp-1.69.1
    * added Gemma-2-9B-it weights to the list of models
    * v5.3 - updated to koboldcpp-1.69
    * v5.2.3 - fixed a bug in the file integrity checking mechanism that reported missing files even when they were not (especially after a fresh installation)
' 25 40

bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh'
