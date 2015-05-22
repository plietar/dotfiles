set nocompatible
filetype off
filetype plugin indent off

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

set nowrap

set backspace=indent,eol,start

set clipboard=unnamed

" Disable arrows, get used to hjkl
noremap <Left> <NOP>
noremap <Down> <NOP>
noremap <Up> <NOP>
noremap <Right> <NOP>
inoremap <Left> <NOP>
inoremap <Down> <NOP>
inoremap <Up> <NOP>
inoremap <Right> <NOP>

" Command line mode navigation
cnoremap <A-h> <Left>
cnoremap <A-j> <Down>
cnoremap <A-k> <Up>
cnoremap <A-l> <Right>

" Easier move within windows
noremap <C-h> <C-w><C-h>
noremap <C-j> <C-w><C-j>
noremap <C-k> <C-w><C-k>
noremap <C-l> <C-w><C-l>

" Disable annoying beeping
set noerrorbells
set vb t_vb=

autocmd BufRead,BufNewFile *.erb set filetype=eruby.html

" NERDTree settings
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '\~$', '\.o$']

au BufRead,BufNewFile *.hamlc set ft=haml

autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType sh setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType jade setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType java setlocal tabstop=2 shiftwidth=2 softtabstop=2

autocmd FileType go setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
let g:vim_markdown_folding_disabled=1

"let g:instant_markdown_autostart = 0

let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_array_whitespace_error = 1

set shell=bash

set exrc
set secure

let mapleader = ","

set mouse=nicra

