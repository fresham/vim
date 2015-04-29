syntax enable
filetype plugin indent on
set nocompatible

call pathogen#infect()

let mapleader="\\"

set backspace=indent,eol,start
set autoindent
set smartindent
" set foldmethod=syntax
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
nmap <Leader>m :FufMruFile<CR>
nmap <Leader>M :FufMruCmd<CR>

" vim-rspec
map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>R :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

nmap <Leader>[ :cprevious<CR>
nmap <Leader>] :cnext<CR>
nmap <Leader>} :cfirst<CR>
nmap <Leader>} :clast<CR>

nmap <Leader>n :NERDTree<CR>

" Enable Fuzzy Finder MRU modes
let g:fuf_modesDisable = []

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

au filetype * set formatoptions-=t  " Don't auto-wrap text based on textwidth
au filetype * set formatoptions-=c  " Don't auto-wrap comments based on textwidth
au filetype * set formatoptions-=r  " Don't auto-comment the next line when pressing <Enter> after a comment
au filetype * set formatoptions-=o  " Don't auto-comment the next line when pressing 'o' after a comment

au filetype *.txt setlocal textwidth=80
au filetype *.txt setlocal formatoptions+=t
