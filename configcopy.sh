divider===============================
divider=$divider$divider
width=20
printf "%$width.${width}sCopy Configs Start%$width.${width}s\n" "$divider" "$divider"
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
cp .vimrc ~/.vimrc
vim +PlugInstall +qall

cp .tmux.conf ~/.tmux.conf

tmux attach-session -t mysession\; source-file ~/.tmux.conf

printf "%$width.${width}sCopy Configs Finished%$width.${width}s\n" "$divider" "$divider"