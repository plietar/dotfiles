set nocompatible               " be iMproved
filetype off                   " required!

" Include pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Set Theme
colorscheme solarized
set bg=dark

filetype plugin indent on

" Don't create annoying files
set nobackup
set noswapfile
 
" Enable color syntaxing
syntax on

" Enable hidden buffer
set hidden

" Add line numbers
set number

" Use 4 spaces to indent
set expandtab
set shiftwidth=4
set softtabstop=4

" Highlight search results
set hlsearch
" Incremental search
set incsearch

" Sudo save
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command Wq :execute ':W' | :q
command WQ :Wq

set clipboard=unnamed
autocmd BufRead,BufNewFile *.erb set filetype=eruby.html

" NERDTree settings
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '\~$']
