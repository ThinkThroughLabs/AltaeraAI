#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Update" \
--msgbox 'AltaeraAI has been updated succesfully!


Recent changes:

    * v6.1.4 - categorized models into submenus by type (RWKV, Gemma, Phi, etc.) for better navigation
    * v6.1.3 - delayed browser launch (termux-open-url) until KoboldCpp back-end is ready. This ensures the front-end opens only after the model and server are fully loaded, while preserving live output display and UI layout
    * v6.1.2 - updated the pre-packaged KoboldCpp to v1.92.1
    * v6.1.1 - added the ability to cancel model downloading by pressing "c". The cancelled file will now be deleted automatically
    * v6.1.0 - partially revamped UI, as part of a bigger code rebuild and refactoring; changed theme, added animations, improved functionalities, fixed bugs, added the ability to stop KoboldCpp inference by pressing "q"
    * added RWKV-G1 and Gemma-3 weights to the list of models
    * v6.0.6 - updated the pre-packaged KoboldCpp to v1.91
' 25 40

#bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh'
exit
