apt-get update
apt-get install -y curl
apt-get install -y vim
apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
cp .vimrc ~/.vimrc
vim +PlugInstall +qall
