if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    endif
call plug#begin('~/.vim/plugged')
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'severin-lemaignan/vim-minimap'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
set number
set ruler
set syntax=on
set expandtab
set nowrap
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
" This is only necessary if you use "set termguicolors".
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark
set termguicolors

colorscheme quantum
