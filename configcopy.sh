cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
cp .vimrc ~/.vimrc
vim +PlugInstall +qall

cp .tmux.conf ~/.tmux.conf

tmux attach-session -t mysession\; source-file ~/.tmux.conf