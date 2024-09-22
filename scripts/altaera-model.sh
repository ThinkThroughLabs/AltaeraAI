#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - AI Models Downloading"
TITLE="AI Model Selection"
MENU="Choose a model to download:"

OPTIONS=(1 "[...] Go Back"
	 2 "RWKV-6-Finch-1B6 [...]"
	 3 "RWKV-6-Finch-3B [...]"
	 4 "RWKV-6-Finch-7B [...]"
	 5 "RWKV-6-Finch-14B [...]"
	 6 "RWKV-6-World-1B6 [...]"
	 7 "RWKV-6-World-3B [...]"
	 8 "RWKV-6-World-7B [...]"
	 9 "RWKV-4-World-Claude-for-Mobile [...]"
         10 "RWKV-4-World [...]"
	 11 "KobbleTinyV2-1.1B [...]"
	 12 "KobbleTinyV2-1.1B_iMatrix [...]"
	 13 "Tiny-Vicuna-1B [...]"
  	 14 "TinyDolphin-2.8-1.1b-imatrix [...]"
  	 15 "TinyDolphin-2.8.2-1.1B-laser [...]"
	 16 "TinyLlama-1.1B-Chat-v1.0 [...]"
	 17 "Llama-3-8B-Instruct [...]"
	 18 "Llama-2-7B-Chat [...]"
	 19 "Mistral-7B-Instruct [...]"
	 20 "Vicuna-7B-v1.5 [...]"
	 21 "Mamba [...]"
	 22 "Phi-3-mini-4k-instruct [...]"
	 23 "Phi-SoSerious-Mini-V1 [...]"
	 24 "Phi-SoSerious-Mini-V1-imatrix [...]"
  	 25 "Phi-2-DPO-GGUF [...]"
  	 26 "Yi-1.5-6B-Chat [...]"
      	 27 "Gemma-2-2b-it [...]"
  	 28 "Gemma-2-2b-it-abliterated [...]"
  	 29 "Gemma-2-9b-it [...]"
  	 30 "Gemma-2B-it [...]"
  	 31 "Gemma-7B-it [...]")


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
  		'./AltaeraAI/altaera-manage_models.sh'
  		;;

        2)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-finch-1b6'
    		;;

        3)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-finch-3b'
    		;;
      
        4)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-finch-7b'
    		;;

        5)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-finch-14b'
    		;;

        6)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-world-1b6'
    		;;

        7)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-world-3b'
    		;;

        8)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-world-7b'
    		;;
      
        9)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-4-world-claude-for-mobile.sh'
    		;;
      
        10)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-4.sh'
    		;;
      
        11)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-kobbletiny.sh'
    		;;
      
        12)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-kobbletiny-imatrix.sh'
    		;;
      
        13)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-tiny-vicuna-1b.sh'
    		;;
      
        14)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-tinydolphin-2.8-1.1b-imatrix.sh'
    		;;
      
        15)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-tinydolphin-2.8.2-1.1b-laser.sh'
    		;;
      
        16)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-tinyllama-1.1b-chat-v1.0.sh'
    		;;
      
        17)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-llama-3-8b-instruct.sh'
    		;;
      
    	18)	
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-llama-2-7b-chat.sh'
    		;;
      
    	19)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-mistral-7b-instruct-v0.2.sh'
    		;;
      
    	20)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-vicuna-7b-v1.5.sh'
    		;;

    	21)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-mamba.sh'
    		;;
      
    	22)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-phi-3-mini-4k-instruct.sh'
    		;;

    	23)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-phi-soserious-mini-v1.sh'
    		;;
      
    	24)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-phi-soserious-mini-v1-imatrix.sh'
    		;;

    	25)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-phi-2-dpo.sh'
    		;;
      
    	26)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-yi-1.5-6b-chat.sh'
    		;;
      
    	27)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-gemma-2-2b-it.sh'
    		;;

    	28)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-gemma-2-2b-it-abliterated.sh'
    		;;

    	29)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-gemma-2-9b-it.sh'
    		;;
      
    	30)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-gemma-2b-it.sh'
    		;;
      
    	31)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-gemma-7b-it.sh'
    		;;
      
esac
