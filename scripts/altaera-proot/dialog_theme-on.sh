if [ -f "/data/data/com.termux/files/home/.dialogrc" ]; then
cp '/data/data/com.termux/files/home/.dialogrc' '/data/data/com.termux/files/home/AltaeraAI-tmp'/termux-default/dialogrc'
rm '/data/data/com.termux/files/home/.dialogrc'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/refs/heads/main/termux/dialogrc -O '.dialogrc' -P '/data/data/com.termux/files/home'
elif [ ! -f "/data/data/com.termux/files/home/.dialogrc" ]; then
dialog --create-rc ~/.dialogrc
cp '/data/data/com.termux/files/home/.dialogrc' '/data/data/com.termux/files/home/AltaeraAI-tmp'/termux-default/dialogrc'
rm '/data/data/com.termux/files/home/.dialogrc'
wget https://raw.githubusercontent.com/ThinkThroughLabs/AltaeraAI/refs/heads/main/termux/dialogrc -O '.dialogrc' -P '/data/data/com.termux/files/home'
fi
fi
