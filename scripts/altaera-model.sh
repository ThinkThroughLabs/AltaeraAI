#!/bin/bash

show_main_menu() {
    HEIGHT=20
    WIDTH=60
    CHOICE_HEIGHT=10
    BACKTITLE="AltaeraAI - AI Models Downloading"
    TITLE="Model Categories"
    MENU="Choose a model category:"

    OPTIONS=(
        7 "Go Back [...]"
        1 "RWKV [...]"
        2 "Gemma [...]"
        3 "Phi [...]"
        4 "LLaMA [...]"
        5 "Tiny Models [...]"
        6 "Other [...]"
    )

    CHOICE=$(dialog --clear \
                    --backtitle "$BACKTITLE" \
                    --title "$TITLE" \
                    --menu "$MENU" \
                    $HEIGHT $WIDTH $CHOICE_HEIGHT \
                    "${OPTIONS[@]}" \
                    2>&1 >/dev/tty)

    clear
    case $CHOICE in
        1) show_rwkv_menu ;;
        2) show_gemma_menu ;;
        3) show_phi_menu ;;
        4) show_llama_menu ;;
        5) show_tiny_menu ;;
        6) show_other_menu ;;
        7) bash './AltaeraAI/altaera-manage_models.sh' ;;
    esac
}

show_rwkv_menu() {
    OPTIONS=(
        18 "Go Back [...]"
        1 "RWKV7-G1-0.1B [...]" 
        2 "RWKV7-G1-0.4B [...]"
        3 "RWKV7-G1-1.5B [...]"
        4 "RWKV7-G1-2.9B [...]"
        5 "RWKV7-Goose-World2.8-0.1B [...]"
        6 "RWKV7-Goose-World2.9-0.4B [...]"
        7 "RWKV7-Goose-World3-1.5B [...]"
        8 "RWKV7-Goose-World3-2.9B [...]"
        9 "RWKV-6-Finch-1B6 [...]"
        10 "RWKV-6-Finch-3B [...]"
        11 "RWKV-6-Finch-7B [...]"
        12 "RWKV-6-Finch-14B [...]"
        13 "RWKV-6-World-1B6 [...]"
        14 "RWKV-6-World-3B [...]"
        15 "RWKV-6-World-7B [...]"
        16 "RWKV-4-World-Claude-for-Mobile [...]"
        17 "RWKV-4-World [...]"
    )
    show_model_menu "RWKV Models" "${OPTIONS[@]}" \
        "altaera-model-rwkv7-g1-0.1b.sh" \
        "altaera-model-rwkv7-g1-0.4b.sh" \
        "altaera-model-rwkv7-g1-1.5b.sh" \
        "altaera-model-rwkv7-g1-2.9b.sh" \
        "altaera-model-rwkv7-goose-world2.8-0.1b.sh" \
        "altaera-model-rwkv7-goose-world2.9-0.4b.sh" \
        "altaera-model-rwkv7-goose-world3-1.5b.sh" \
        "altaera-model-rwkv7-goose-world3-2.9b.sh" \
        "altaera-model-rwkv-6-finch-1b6.sh" \
        "altaera-model-rwkv-6-finch-3b.sh" \
        "altaera-model-rwkv-6-finch-7b.sh" \
        "altaera-model-rwkv-6-finch-14b.sh" \
        "altaera-model-rwkv-6-world-1b6.sh" \
        "altaera-model-rwkv-6-world-3b.sh" \
        "altaera-model-rwkv-6-world-7b.sh" \
        "altaera-model-rwkv-4-world-claude-for-mobile.sh" \
        "altaera-model-rwkv-4.sh"
}

show_gemma_menu() {
    OPTIONS=(
        12 "Go Back [...]"
        1 "Gemma-3-1b-it [...]"
        2 "Gemma-3-1b-it-abliterated [...]"
        3 "Gemma-3-4b-it [...]"
        4 "Gemma-3-4b-it-abliterated [...]"
        5 "Gemma-3-12b-it [...]"
        6 "Gemma-3-12b-it-abliterated [...]"
        7 "Gemma-2-2b-it [...]"
        8 "Gemma-2-2b-it-abliterated [...]"
        9 "Gemma-2-9b-it [...]"
        10 "Gemma-2B-it [...]"
        11 "Gemma-7B-it [...]"
    )
    show_model_menu "Gemma Models" "${OPTIONS[@]}" \
        "altaera-model-gemma-3-1b-it.sh" \
        "altaera-model-gemma-3-1b-it-abliterated.sh" \
        "altaera-model-gemma-3-4b-it.sh" \
        "altaera-model-gemma-3-4b-it-abliterated.sh" \
        "altaera-model-gemma-3-12b-it.sh" \
        "altaera-model-gemma-3-12b-it-abliterated.sh" \
        "altaera-model-gemma-2-2b-it.sh" \
        "altaera-model-gemma-2-2b-it-abliterated.sh" \
        "altaera-model-gemma-2-9b-it.sh" \
        "altaera-model-gemma-2b-it.sh" \
        "altaera-model-gemma-7b-it.sh"
}

show_phi_menu() {
    OPTIONS=(
        5 "Go Back [...]"
        1 "Phi-3-mini-4k-instruct [...]"
        2 "Phi-SoSerious-Mini-V1 [...]"
        3 "Phi-SoSerious-Mini-V1-imatrix [...]"
        4 "Phi-2-DPO [...]"
    )
    show_model_menu "Phi Models" "${OPTIONS[@]}" \
        "altaera-model-phi-3-mini-4k-instruct.sh" \
        "altaera-model-phi-soserious-mini-v1.sh" \
        "altaera-model-phi-soserious-mini-v1-imatrix.sh" \
        "altaera-model-phi-2-dpo.sh"
}

show_llama_menu() {
    OPTIONS=(
        6 "Go Back [...]"
        1 "Llama-3-8B-Instruct [...]"
        2 "Llama-2-7B-Chat [...]"
        3 "Vicuna-7B-v1.5 [...]"
        4 "Mistral-7B-Instruct [...]"
        5 "Yi-1.5-6B-Chat [...]"
    )
    show_model_menu "LLaMA Family" "${OPTIONS[@]}" \
        "altaera-model-llama-3-8b-instruct.sh" \
        "altaera-model-llama-2-7b-chat.sh" \
        "altaera-model-vicuna-7b-v1.5.sh" \
        "altaera-model-mistral-7b-instruct-v0.2.sh" \
        "altaera-model-yi-1.5-6b-chat.sh"
}

show_tiny_menu() {
    OPTIONS=(
        7 "Go Back [...]"
        1 "KobbleTinyV2-1.1B [...]"
        2 "KobbleTinyV2-1.1B_iMatrix [...]"
        3 "Tiny-Vicuna-1B [...]"
        4 "TinyDolphin-2.8-1.1b-imatrix [...]"
        5 "TinyDolphin-2.8.2-1.1B-laser [...]"
        6 "TinyLlama-1.1B-Chat-v1.0 [...]"
    )
    show_model_menu "Tiny Models" "${OPTIONS[@]}" \
        "altaera-model-kobbletiny.sh" \
        "altaera-model-kobbletiny-imatrix.sh" \
        "altaera-model-tiny-vicuna-1b.sh" \
        "altaera-model-tinydolphin-2.8-1.1b-imatrix.sh" \
        "altaera-model-tinydolphin-2.8.2-1.1b-laser.sh" \
        "altaera-model-tinyllama-1.1b-chat-v1.0.sh"
}

show_other_menu() {
    OPTIONS=(
        2 "Go Back [...]"
        1 "Mamba [...]"
    )
    show_model_menu "Other Models" "${OPTIONS[@]}" \
        "altaera-model-mamba.sh"
}

show_model_menu() {
    TITLE="$1"
    shift
    declare -a OPTIONS=()
    local -a SCRIPTS=()
    while [[ "$1" =~ ^[0-9]+$ ]]; do OPTIONS+=("$1" "$2"); shift 2; done
    SCRIPTS=("$@")

    CHOICE=$(dialog --clear \
                    --backtitle "AltaeraAI - AI Models Downloading" \
                    --title "$TITLE" \
                    --menu "Select a model to download:" \
                    20 60 15 \
                    "${OPTIONS[@]}" \
                    2>&1 >/dev/tty)

    clear
    if [[ -n "$CHOICE" && "$CHOICE" -le "${#SCRIPTS[@]}" ]]; then
        bash "/data/data/com.termux/files/home/AltaeraAI/${SCRIPTS[$((CHOICE - 1))]}"
    else
        show_main_menu
    fi
}

show_main_menu
