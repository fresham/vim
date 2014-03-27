" Set Vim to run in the full-featured mode
set nocompatible

" Turn on syntax highlighting
syntax enable

" Turn on filetype detection, filetype plugins, and filetype indentation
filetype plugin indent on

" Automatically indent on new lines
set autoindent

" Change indentation to match a local context
set smartindent

" Ignore case while searching
set ignorecase

" Use case-sensitive searching only when using capital letters
set smartcase

" Use enhanced command line completion
set wildmenu

" Turn invisibles off by default
set nolist

" Define invisble characters
set listchars=tab:▸\ ,eol:¬

" Show cursor position and file position in status bar
set ruler

" show line numbering
set number

" Change the terminal title to the current file name
set title

" Set a global default tab width
set tabstop=2

" Set a global default for number of spaces in autoindent
set shiftwidth=2

" Use spaces instead of tabs
set expandtab

" Set the leader character to /
let mapleader="\\"

" Always show the status line
set laststatus=2

" Use incremental search
set incsearch

" Turn off error bells
set noerrorbells

" Turn off visual error bells
set novisualbell

" Turn off error highlighting
:hi Error NONE
:hi ErrorMsg NONE

" Set a dark background for vim in a terminal
set background=light

" Tell vim we really have a  256-color terminal
set t_Co=256

" Set shortcut to run make
nmap <silent> <Leader>j :w<CR>:make<CR>:cw<CR>

" scratch shortcut
nmap <silent> <Leader>g :Scratch<CR>

" Command to turn on invisble characters
nmap <silent> <Leader>l :set list!<CR>

" Fuzzy Finder mappings
nmap <Leader>f :FufFile<CR>
nmap <Leader>F :FufCoverageFile<CR>
nmap <Leader>L :FufLine<CR>
nmap <Leader>r :FufMruFile<CR>
nmap <Leader>R :FufMruCmd<CR>

" Enable MRU modes
let g:fuf_modesDisable = []

au filetype * set formatoptions-=t  " Don't auto-wrap text based on textwidth
au filetype * set formatoptions-=c  " Don't auto-wrap comments based on textwidth
au filetype * set formatoptions-=r  " Don't auto-comment the next line when pressing <Enter> after a comment
au filetype * set formatoptions-=o  " Don't auto-comment the next line when pressing 'o' after a comment

" Autowrap text file lines to 80 characters
au filetype *.txt setlocal textwidth=80
au filetype *.txt setlocal formatoptions+=t

" Run Pathogen to load the bundle
call pathogen#infect()

" Solarized can only be picked up after the bundle is loaded (duh)
colorscheme solarized
