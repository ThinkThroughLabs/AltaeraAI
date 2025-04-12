#!/bin/bash

HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - AI Models Downloading"
TITLE="AI Model Selection"
MENU="Choose a model to download:"

OPTIONS=(1 "[...] Go Back"
	 2 "RWKV7-Goose-World2.8-0.1B [...]"
	 3 "RWKV7-Goose-World2.9-0.4B [...]"
	 4 "RWKV7-Goose-World3-1.5B [...]"
	 5 "RWKV7-Goose-World3-2.9B [...]"
	 6 "RWKV-6-Finch-1B6 [...]"
	 7 "RWKV-6-Finch-3B [...]"
	 8 "RWKV-6-Finch-7B [...]"
	 9 "RWKV-6-Finch-14B [...]"
	 10 "RWKV-6-World-1B6 [...]"
	 11 "RWKV-6-World-3B [...]"
	 12 "RWKV-6-World-7B [...]"
	 13 "RWKV-4-World-Claude-for-Mobile [...]"
         14 "RWKV-4-World [...]"
	 15 "KobbleTinyV2-1.1B [...]"
	 16 "KobbleTinyV2-1.1B_iMatrix [...]"
	 17 "Tiny-Vicuna-1B [...]"
  	 18 "TinyDolphin-2.8-1.1b-imatrix [...]"
  	 19 "TinyDolphin-2.8.2-1.1B-laser [...]"
	 20 "TinyLlama-1.1B-Chat-v1.0 [...]"
	 21 "Llama-3-8B-Instruct [...]"
	 22 "Llama-2-7B-Chat [...]"
	 23 "Mistral-7B-Instruct [...]"
	 24 "Vicuna-7B-v1.5 [...]"
	 25 "Mamba [...]"
	 26 "Phi-3-mini-4k-instruct [...]"
	 27 "Phi-SoSerious-Mini-V1 [...]"
	 28 "Phi-SoSerious-Mini-V1-imatrix [...]"
  	 29 "Phi-2-DPO-GGUF [...]"
  	 30 "Yi-1.5-6B-Chat [...]"
      	 31 "Gemma-2-2b-it [...]"
  	 32 "Gemma-2-2b-it-abliterated [...]"
  	 33 "Gemma-2-9b-it [...]"
  	 34 "Gemma-2B-it [...]"
  	 35 "Gemma-7B-it [...]")


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
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv7-goose-world2.8-0.1b.sh'
    		;;
      
        3)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv7-goose-world2.9-0.4b.sh'
    		;;
      
        4)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv7-goose-world3-1.5b.sh'
    		;;
      
        5)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv7-goose-world3-2.9b.sh'
    		;;
      
        6)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-finch-1b6'
    		;;

        7)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-finch-3b'
    		;;
      
        8)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-finch-7b'
    		;;

        9)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-finch-14b'
    		;;

        10)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-world-1b6'
    		;;

        11)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-world-3b'
    		;;

        12)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-6-world-7b'
    		;;
      
        13)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-4-world-claude-for-mobile.sh'
    		;;
      
        14)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-rwkv-4.sh'
    		;;
      
        15)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-kobbletiny.sh'
    		;;
      
        16)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-kobbletiny-imatrix.sh'
    		;;
      
        17)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-tiny-vicuna-1b.sh'
    		;;
      
        18)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-tinydolphin-2.8-1.1b-imatrix.sh'
    		;;
      
        19)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-tinydolphin-2.8.2-1.1b-laser.sh'
    		;;
      
        20)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-tinyllama-1.1b-chat-v1.0.sh'
    		;;
      
        21)
  		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-llama-3-8b-instruct.sh'
    		;;
      
    	22)	
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-llama-2-7b-chat.sh'
    		;;
      
    	23)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-mistral-7b-instruct-v0.2.sh'
    		;;
      
    	24)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-vicuna-7b-v1.5.sh'
    		;;

    	25)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-mamba.sh'
    		;;
      
    	26)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-phi-3-mini-4k-instruct.sh'
    		;;

    	27)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-phi-soserious-mini-v1.sh'
    		;;
      
    	28)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-phi-soserious-mini-v1-imatrix.sh'
    		;;

    	29)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-phi-2-dpo.sh'
    		;;
      
    	30)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-yi-1.5-6b-chat.sh'
    		;;
      
    	31)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-gemma-2-2b-it.sh'
    		;;

    	32)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-gemma-2-2b-it-abliterated.sh'
    		;;

    	33)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-gemma-2-9b-it.sh'
    		;;
      
    	34)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-gemma-2b-it.sh'
    		;;
      
    	35)
     		bash '/data/data/com.termux/files/home/AltaeraAI/altaera-model-gemma-7b-it.sh'
    		;;
      
esac
