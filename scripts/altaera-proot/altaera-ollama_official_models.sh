#!/bin/bash

HEIGHT=25
WIDTH=160
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - v6.0.6 | RAM:$(free -m | awk '/^Mem:/{printf("%.1fG\n",$2/1000)}') | Free Storage:$(df -Ph . | tail -1 | awk '{print $4}')"
TITLE="AltaeraAI - ollama Official Models"
MENU="Choose a model to run:"

OPTIONS=(1 "[...] Go Back"
         2 "Llama 3.1 8B [4.7GB]"
         3 "Phi 3 Mini 3.8B [2.3GB]"
         4 "Phi 3 Medium 14B [7.9GB]"
         5 "Gemma 2 2B [1.6GB]"
         6 "Gemma 2 9B [5.5GB]"
         7 "Mistral 7B [4.1GB]"
         8 "Moondream 2 [829MB]"
         9 "Neural Chat 7B [4.1GB]"
         10 "Starling 7B [4.1GB]"
         11 "Code Llama 7B [3.8GB]"
         12 "Llama 2 Uncensored 7B [3.8GB]"
         13 "LLaVA 7B [4.5GB]"
         14 "Solar 10.7B [6.1GB]"
         15 "TinyDolphin 1.1B [637MB]")


CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in

        1)
            exit
            bash '/root/altaera-ollama.sh'
            ;;
        2)
            bash 'altaera-ollama_front-end.sh'
            ollama pull llama3.1
            ollama run llama3.1
            ;;
        3)
            bash 'altaera-ollama_front-end.sh'
            ollama pull phi3
            ollama run phi3
            ;;
        4)
            bash 'altaera-ollama_front-end.sh'
            ollama pull phi3:medium
            ollama run phi3:medium
            ;;
        5)
            bash 'altaera-ollama_front-end.sh'
            ollama pull gemma2:2b
            ollama run gemma2:2b
            ;;
        6)
            bash 'altaera-ollama_front-end.sh'
            ollama pull gemma2
            ollama run gemma2
            ;;
        7)
            bash 'altaera-ollama_front-end.sh'
            ollama pull mistral
            ollama run mistral
            ;;
        8)
            bash 'altaera-ollama_front-end.sh'
            ollama pull moondream
            ollama run moondream
            ;;
        9)
            bash 'altaera-ollama_front-end.sh'
            ollama pull neural-chat
            ollama run neural-chat
            ;;
        10)
            bash 'altaera-ollama_front-end.sh'
            ollama pull starling-lm
            ollama run starling-lm
            ;;
        11)
            bash 'altaera-ollama_front-end.sh'
            ollama pull codellama
            ollama run codellama
            ;;
        12)
            bash 'altaera-ollama_front-end.sh'
            ollama pull llama2-uncensored
            ollama run llama2-uncensored
            ;;
        13)
            bash 'altaera-ollama_front-end.sh'
            ollama pull llama2-uncensored
            ollama run llama2-uncensored
            ;;
        14)
            bash 'altaera-ollama_front-end.sh'
            ollama pull llama2-uncensored
            ollama run llama2-uncensored
            ;;
        15)
            bash 'altaera-ollama_front-end.sh'
            ollama pull tinydolphin
            ollama run tinydolphin
            ;;

esac
