divider===============================
divider=$divider$divider
width=20

printf "%$width.${width}sStart%$width.${width}s\n" "$divider" "$divider"
printf "%$width.${width}sInstall Software%$width.${width}s\n" "$divider" "$divider"
apt-get update
apt update
apt-get install -y curl
apt-get install -y vim
apt-get install -y zsh
apt install -y tmux
printf "%$width.${width}sFinished Installing Software%$width.${width}s\n " "$divider" "$divider"
source ./plugins.sh
source ./configcopy.sh
printf "%$width.${width}sFinished%$width.${width}s\n" "$divider" "$divider"
