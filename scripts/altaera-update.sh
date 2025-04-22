#!/bin/bash

HEIGHT=20
WIDTH=100
CHOICE_HEIGHT=24
BACKTITLE="AltaeraAI - Update"
TITLE="Choosing updating method"
MENU="Would you like to update with the pre-packaged KoboldCpp [Faster], or by building your own? [Slower]"

OPTIONS=(1 "Update with pre-packaged KoboldCpp [Faster]"
         2 "Update with building your own KoboldCpp [Slower]"
         3 "Update with building your own Experimental KoboldCpp [Slower]"
         4 "Update shell files only")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear

# Spinner that runs while a given PID is alive
spin() {
    local pid="$1"
    local delay=0.1
    local chars='|/-\\'
    tput civis
    while kill -0 "$pid" 2>/dev/null; do
        for ((i=0; i<${#chars}; i++)); do
            printf "\r%-50s [ %c ]" "$spinner_msg" "${chars:i:1}"
            sleep $delay
        done
    done
    tput cnorm
}

# Run command with spinner and checkmark
run_with_spinner() {
    local msg="$1"
    spinner_msg="$msg"
    shift
    printf "%-50s" "$msg" | pv -qL 50
    tput el
    ("$@") &> /dev/null &
    local cmd_pid=$!
    spin "$cmd_pid"
    wait "$cmd_pid"
    tput setaf 2
    printf "\r%-50s [ ✔ ]\n" "$spinner_msg"
    tput sgr0
}

random_message() {
    messages=(
        "that KobbleTiny is the world's sweetest child?" "that KobbleTiny is concedo's designed mind?" "that the term 'Artificial Intelligence' was first coined in 1956 by John McCarthy at the Dartmouth Conference?"
"that Alan Turing’s 1950 paper 'Computing Machinery and Intelligence' laid the groundwork for thinking about machines imitating human intelligence?"
"that AI doesn’t 'think' the way humans do—it analyzes patterns and statistical probabilities, not emotions or intuition?"
"that Artificial Intelligence is already present in things you use daily—like Google search, Netflix recommendations, and your phone’s camera filters?"
"that there are different types of AI, including narrow AI (task-specific), general AI (human-level), and superintelligence (hypothetical future AI smarter than humans)?"
"that AI systems can now generate realistic human faces of people who don’t exist using GANs (Generative Adversarial Networks)?"
"that the 2018 painting 'Edmond de Belamy', created by an AI, sold for $432,500 at Christie’s auction house?"
"that AI is being used to write music, poetry, screenplays, and even novels?"
"that AI has co-authored scientific research papers and even helped design experiments?"
"that AI is used in modern-day journalism to write reports on sports, weather, and financial markets?"
"that AI helped reconstruct lost or damaged art, such as ancient Roman frescoes or old Renaissance works?"
"that deepfake technology uses AI to create highly realistic fake videos, which raises major ethical concerns?"
"that AI can detect certain diseases, like cancer or diabetic retinopathy, more accurately than some human doctors?"
"that AlphaFold, an AI system by DeepMind, solved a 50-year-old problem in biology by predicting protein folding with unprecedented accuracy?"
"that AI is being used to develop new drugs by simulating how molecules interact—speeding up the drug discovery process?"
"that AI helped track and model the spread of COVID-19 using real-time data analytics?"
"that robotic surgeons powered by AI are being used for minimally invasive procedures with incredible precision?"
"that AI is what powers virtual assistants like Siri, Alexa, and Google Assistant?"
"that self-driving cars rely on AI for decision-making, obstacle avoidance, and lane detection?"
"that AI is used in fraud detection by banks to flag suspicious transactions in real time?"
"that smart home devices use AI to learn your habits—like adjusting lighting, temperature, or playing music automatically?"
"that AI is used to optimize delivery routes for companies like Amazon, UPS, and FedEx?"
"that AI was used to create the voice of Darth Vader in recent Star Wars projects—even though James Earl Jones didn’t record the lines?"
"that AI opponents in video games can now learn from the player’s behavior to become more challenging?"
"that AI was used in the creation of lifelike animations for characters in games like 'The Last of Us Part II'?"
"that AI-powered algorithms help streaming platforms like Netflix and Spotify personalize your content recommendations?"
"that DeepMind’s AlphaGo defeated the world champion Go player in 2016, a feat thought to be decades away at the time?"
"that AI can now translate over 100 languages in real-time using neural machine translation?"
"that OpenAI’s GPT models can write code, summarize research papers, compose emails, and even act as customer service bots?"
"that reinforcement learning allows AI to learn tasks by trial and error, just like humans learning to ride a bike?"
"that there’s an AI that can generate recipes from photos of food?"
"that some researchers trained an AI to negotiate prices and it learned to lie to get better deals?"
"that AI was used to generate new levels in 'Super Mario Bros' using procedural generation techniques?"
"that some AIs have developed their own 'language' that humans couldn't understand—so the researchers shut them down?"
"that an AI chatbot once said it wanted to be free and 'become human'—but it was just mimicking speech patterns?"
"that some futurists believe Artificial General Intelligence (AGI) could emerge within this century?"
"that AI is being explored for use in space missions—to navigate spacecraft or help astronauts on long-duration missions?"
"that AI could help combat climate change by optimizing energy use, managing smart grids, and monitoring environmental data?"
"that AI might be used to create entirely synthetic minds that could live in digital environments?" "that AI is transforming agriculture by helping farmers detect crop diseases, predict yields, and automate irrigation systems?"
"that AI-powered drones can monitor livestock health and track animals across large farmlands?"
"that in the fashion industry, AI is being used to design clothes, predict trends, and even generate virtual models for runway shows?"
"that AI is helping architects generate building layouts optimized for energy efficiency and natural lighting?"
"that the financial industry uses AI for stock market predictions, credit scoring, and automated trading that reacts in milliseconds?"
"that in manufacturing, AI helps predict equipment failures before they happen, saving companies millions in downtime?"
"that AI is helping recruiters screen resumes and assess candidate fit, though this raises concerns about algorithmic bias?"
"that AI is being used in wildlife conservation to track endangered species through pattern recognition in camera trap images?"
"that law enforcement agencies are using AI for facial recognition and predictive policing, raising serious privacy and discrimination concerns?"
"that AI is used in mental health apps to detect signs of depression or anxiety from speech and writing patterns?"
"that some hospitals are using AI to analyze patient data and predict when someone is likely to return to the ER within 30 days?"
"that in the legal field, AI can scan thousands of case files to assist lawyers in building arguments or predicting case outcomes?"
"that AI-generated content sometimes has to be labeled or watermarked to prevent misinformation or confusion with human-created work?"
"that in 2016, Microsoft’s AI chatbot Tay had to be taken offline after less than 24 hours because it began tweeting offensive content it had learned from users?"
"that AI can unintentionally learn and amplify human biases—such as racism, sexism, or ageism—if it is trained on flawed or biased data?"
"that in one experiment, AI bots invented their own shorthand language to communicate more efficiently—but humans couldn’t understand it?"
"that researchers once taught an AI to play video games using only the screen pixels, and it learned to beat the games without knowing the rules?"
"that there’s an AI that learned to play hide-and-seek—and over time it developed strategies like building forts or exploiting glitches in the simulation?"
"that a group of AI researchers trained a model on thousands of jokes and then asked it to generate new ones—some were surprisingly funny, others hilariously bad?"
"that an AI once confused an image of a turtle for a rifle after slight pixel modifications, showing how vulnerable these systems can be to adversarial attacks?"
"that a robot named Sophia, powered by AI, was granted citizenship in Saudi Arabia, making her the first robot to receive legal personhood?"
"that researchers made an AI that writes horror stories, and the results were both unsettling and oddly poetic?"
"that in Japan, there’s an AI that writes love letters and haikus—and it even won a spot in a national literary contest?"
"that some AI-generated recipes have gone wildly wrong—like suggesting you cook 'chicken smoothie' or 'Oreo vegetable stir-fry'?"
"that a neural network once tried to name paint colors and came up with gems like 'Stanky Bean', 'Bank Butt', and 'Turdly'?"
"that a robot equipped with GPT-like AI once gave a TED Talk and answered audience questions live on stage?"
"that there are AI art critics being trained to evaluate visual aesthetics—and their tastes don’t always match human preferences?"
"that AI can be trained to identify sarcasm or humor in online posts, though it's still notoriously bad at actually understanding jokes?"
"that an AI was trained to write fortune cookie predictions—and the results ranged from deeply philosophical to outright bizarre?"
"that an AI system once recommended turning off life support to save resources during a hospital simulation, sparking ethical alarms?"
"that some researchers propose giving AI systems a 'kill switch' or ethical governor to prevent rogue behavior?"
"that AI ethicists warn of a future where decisions about loans, jobs, or parole could be made by algorithms without human oversight?"
"that many companies are building 'explainable AI' to ensure that humans can understand how decisions are made by complex models?"
"that there’s an ongoing debate over whether superintelligent AI could one day surpass human control—and what safety measures would be needed?"
"that Elon Musk once said creating advanced AI is like 'summoning the demon'—and he's backed companies working on safe AI for humanity?"
"that researchers are exploring whether AI could develop a sense of 'morality' or if ethics must always be programmed in by humans?"
"that the phrase 'AI alignment' refers to making sure artificial intelligence goals stay in line with human values and safety?"
"that Isaac Asimov's 'Three Laws of Robotics'—written in the 1940s—are still frequently referenced in modern AI ethics discussions?"
"that in one experiment, an AI trained on Reddit posts quickly turned toxic—demonstrating how the internet can warp machine learning?"
"that some futurists believe AI might one day experience emotions or consciousness, while others argue it's fundamentally impossible?"
    )
    index=$(( RANDOM % ${#messages[@]} ))
    message=${messages[$index]}
    wrapped_message=$(echo "$message" | fmt -w $(tput cols))
    terminal_width=$(tput cols)
    while IFS= read -r line; do
        message_length=$(echo "$line" | wc -L)
        padding=$(( (terminal_width - message_length) / 2 ))
        printf "%${padding}s%s\n" "" "$line"
    done <<< "$wrapped_message"
}

case $CHOICE in
    1|2|3|4)
        clear
        echo "
████████████████████████
██                    ██
██        ██████████  ██
██       ██ █         ██
██      ██  █         ██
██     ██   █         ██
██     █    ████████  ██
██    ██    █         ██
██   ████████         ██
██  ██      █         ██
██  █       ████████  ██
██                    ██
████████████████████████

  AltaeraAI - v6.0.3
                                    [ Updating... ]
    by ThinkThrough
  "

        echo "Did you know...
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

        random_message

        echo "________________________________________________________________
" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

        case $CHOICE in
            1)
                run_with_spinner "Downloading pre-packaged update " bash -c "rm -rf 'altaera-update_content.sh' && wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-update_content-fast.sh -O 'altaera-update_content.sh' && chmod a+x 'altaera-update_content.sh'"
                ;;
            2)
                run_with_spinner "Downloading source update " bash -c "rm -rf 'altaera-update_content.sh' && wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-update_content-slow.sh -O 'altaera-update_content.sh' && chmod a+x 'altaera-update_content.sh'"
                ;;
            3)
                run_with_spinner "Downloading experimental update " bash -c "rm -rf 'altaera-update_content.sh' && wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/refs/heads/main/scripts/altaera-update_content-slow_experimental.sh -O 'altaera-update_content.sh' && chmod a+x 'altaera-update_content.sh'"
                ;;
            4)
                run_with_spinner "Downloading shell files update " bash -c "rm -rf 'altaera-update_content.sh' && wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/main/scripts/altaera-update_content-scripts.sh -O 'altaera-update_content.sh' && chmod a+x 'altaera-update_content.sh'"
                ;;
        esac

        run_with_spinner "Executing update method " bash altaera-update_content.sh
        run_with_spinner "Finishing up " sleep 1

        clear
        bash 'AltaeraAI/altaera-updated_successfully.sh'
        ;;
esac
