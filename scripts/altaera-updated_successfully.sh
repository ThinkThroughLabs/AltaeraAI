#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Update" \
--msgbox 'AltaeraAI has been updated succesfully!


Recent changes:

    * v6.0.0 - updated the pre-packaged KoboldCpp to v1.77
    * v5.7.8 - updated the pre-packaged KoboldCpp to v1.76
    * v5.7.7 - added RWKV-6-Finch and RWKV-6-World weights to the list of models
    * added option to compile experimental KoboldCpp
    * removed OpenBLAS, which was replaced by the "llamafile" library - it is now set by default
    * v5.7.6 - updated the pre-packaged KoboldCpp to v1.75.2
    * added the ability to back up stories to the end-to-end encrypted MEGA cloud service
    * v5.7.5 - updated the pre-packaged KoboldCpp to v1.74
    * v5.7.4.2 - Hotfix: fixed code mistakes related to the "Manage AI Back-ends" option
' 25 40

bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh'
