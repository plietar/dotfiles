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

" Disable annoying beeping
set noerrorbells
set vb t_vb=

autocmd BufRead,BufNewFile *.erb set filetype=eruby.html

" NERDTree settings
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '\~$', '\.o$', '\.d$']

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

set mouse=nicra

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nmap <Leader><Leader> V
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

let g:expand_region_text_objects = {
      \ 'iw'  :0,
      \ 'iW'  :0,
      \ 'i"'  :0,
      \ 'i''' :0,
      \ 'i]'  :1,
      \ 'i)'  :1,
      \ 'i}'  :1,
      \ 'il'  :0,
      \ 'al'  :0,
      \ 'ip'  :0,
      \ 'ie'  :0,
      \ }
let g:AutoPairsMapCR = 0

