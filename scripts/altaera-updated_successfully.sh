#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Update" \
--msgbox 'AltaeraAI has been updated succesfully!


Recent changes:

    * v6.0.2 - updated the pre-packaged KoboldCpp to experimental/v1.88 — the reason being that the experimental branch included a fix for RWKV related to a broken recurrent cache component in upstream LlamaCpp
    * v6.0.1 - added RWKV7-Goose-World weights to the list of models
    * v6.0.0 - updated the pre-packaged KoboldCpp to v1.87.4
    * v5.7.9 - updated the pre-packaged KoboldCpp to v1.77
    * v5.7.8 - updated the pre-packaged KoboldCpp to v1.76
    * v5.7.7 - added RWKV-6-Finch and RWKV-6-World weights to the list of models
' 25 40

#bash '/data/data/com.termux/files/home/AltaeraAI/altaera.sh'
exit
