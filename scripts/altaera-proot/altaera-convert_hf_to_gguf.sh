echo "Preparing files...

  " | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols);

{
mkdir 'altaera-c&q'
cd 'altaera-c&q'
git clone https://github.com/ggerganov/llama.cpp
git pull
} &> /dev/null 2>&1;
bash '/root/altaera-convert_url.sh'
