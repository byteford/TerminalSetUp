divider===============================
divider=$divider$divider
width=20

printf "%$width.${width}sPlugins Start%$width.${width}s\n" "$divider" "$divider"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --quiet --depth=1 https://github.com/romkatv/powerlevel10k.git  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --quiet --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
printf "%$width.${width}sPlugins Finished%$width.${width}s\n" "$divider" "$divider"