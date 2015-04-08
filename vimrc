syntax enable
filetype plugin indent on
set nocompatible

call pathogen#infect()

let mapleader="\\"

set backspace=indent,eol,start
set autoindent
set smartindent
set foldmethod=syntax
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap

set incsearch
set ignorecase
set smartcase
set wildmenu

set nolist
set listchars=tab:▸\ ,eol:¬
set ruler
set number
set title
set laststatus=2
set noerrorbells
set novisualbell

:hi Error NONE
:hi ErrorMsg NONE

set background=dark
colorscheme base16-default
set t_Co=256

" turn on invisibles
nmap <silent> <Leader>l :set list!<CR>

" Fuzzy Finder mappings
nmap <Leader>f :FufFile<CR>
nmap <Leader>F :FufCoverageFile<CR>
nmap <Leader>L :FufLine<CR>
nmap <Leader>r :FufMruFile<CR>
nmap <Leader>R :FufMruCmd<CR>

nmap <Leader>n :NERDTree<CR>

" Enable Fuzzy Finder MRU modes
let g:fuf_modesDisable = []

au filetype * set formatoptions-=t  " Don't auto-wrap text based on textwidth
au filetype * set formatoptions-=c  " Don't auto-wrap comments based on textwidth
au filetype * set formatoptions-=r  " Don't auto-comment the next line when pressing <Enter> after a comment
au filetype * set formatoptions-=o  " Don't auto-comment the next line when pressing 'o' after a comment

au filetype *.txt setlocal textwidth=80
au filetype *.txt setlocal formatoptions+=t
