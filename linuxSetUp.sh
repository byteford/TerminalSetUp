apt-get update
apt-get install -y curl
apt-get install -y vim
apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
mv .zshrc ~/.zshrc
