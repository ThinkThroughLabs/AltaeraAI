#!/bin/bash

dialog --backtitle "AltaeraAI" \
--title "AltaeraAI - Changelog [CLI]" \
--msgbox '
    * v4.9.4 - added an optional (set by default) black MENU background (Bash display dialog boxes)
    * v4.9.3 – added Gemma-2B/7B-it weights (and a reference to their LICENSE file, with a notice) to the list of models
    * v4.9.2 - added Yi-1.5-6B-Chat weights to the list of models
    * v4.9.1 - added "Benchmark" mode to test AI models (--benchmark flag - KoboldCpp), into the MENU
    * v4.9 – updated to koboldcpp-1.65
' 300 100

exit