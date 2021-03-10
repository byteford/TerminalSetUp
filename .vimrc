"
" Setup
"
set history=500
set number
set ruler
set mouse=a
set magic
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set linebreak
set textwidth=500
set wrap
set autoindent
set smartindent
set hlsearch
set ignorecase
set incsearch
set nobackup
set nowritebackup
set noswapfile
syntax enable

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    endif
call plug#begin('~/.vim/plugged')
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'severin-lemaignan/vim-minimap'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdtree'
call plug#end()
" This is only necessary if you use "set termguicolors".
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:rainbow_active = 1

set background=dark
set termguicolors
silent! colorscheme quantum

"
"" Coc.nvim setup
"
let g:coc_disable_startup_warning = 1
