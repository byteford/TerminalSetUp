
apt-get update >> install.log
apt update >> install.log
apt-get install -y curl >> install.log
apt-get install -y vim >> install.log
apt-get install -y zsh >> install.log
apt install -y tmux >> install.log

source plugins.sh
source configcopy.sh
