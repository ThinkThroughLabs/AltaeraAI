#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Update" \
--msgbox 'AltaeraAI has been updated succesfully!


Recent changes:

    * v6.0.6 - updated the pre-packaged KoboldCpp to v1.91
    * v6.0.5 - updated the pre-packaged KoboldCpp to v1.90.2
    * v6.0.4 - updated the pre-packaged KoboldCpp to v1.89
    * v6.0.3 - fixed the link to RWKV7-Goose-World3-2.9B
    * v6.0.2 - updated the pre-packaged KoboldCpp to experimental/v1.88 — the reason being that the experimental branch included a fix for RWKV related to a broken recurrent cache component in upstream LlamaCpp
    * v6.0.1 - added RWKV7-Goose-World weights to the list of models
' 25 40

#bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh'
exit
