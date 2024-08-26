curl -fsSL https://ollama.com/install.sh | sh

clear
echo "ollama intialized! Now press 'Ctrl+T', type in 'ae' and start ollama by choosing a model"

{
ollama serve
} &> /dev/null 2>&1;
