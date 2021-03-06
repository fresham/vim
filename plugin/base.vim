" spacing
set backspace=indent,eol,start
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap

" style
set nolist
set listchars=tab:▸\ ,eol:¬
set ruler
set nonumber
set title
set laststatus=2
set noerrorbells
set novisualbell
let base16colorspace=256
colorscheme base16-yesterdaynight
set background=dark
set t_Co=256
au filetype * set formatoptions-=t    " Don't auto-wrap text based on textwidth
au filetype * set formatoptions-=c    " Don't auto-wrap comments based on textwidth
au filetype * set formatoptions-=r    " Don't auto-comment the next line when pressing <Enter> after a comment
au filetype * set formatoptions-=o    " Don't auto-comment the next line when pressing 'o' after a comment
hi Error NONE
hi ErrorMsg NONE

" filtypes
au BufRead,BufNewFile Bowerfile set filetype=ruby

set shell=/bin/bash

set makeprg=jshint
set errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %m

" command settings
set incsearch
set ignorecase
set smartcase
set wildmenu
