echo "Initializing installation...";

{
wget https://raw.githubusercontent.com/latestissue/altaera-packages.github.io/main/altaera-v2/altaera_install_pt-3.sh
chmod a+x 'altaera_install_pt-3.sh'
} &> /dev/null 2>&1;

./altaera_install_pt-3.sh
