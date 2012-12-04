" Set font
set guifont=Droid\ Sans\ Mono\ 11

" Use buffers as hidden buffers
" FIXME: Still not entirely sure what this does.
set hidden

" Turn on antialiasing (Mac only)
set antialias

" Use UTF-8 everywhere
set encoding=utf-8

" Turn off the toolbar
set guioptions-=T

" Turn off scrollbars
set guioptions-=r
set guioptions-=l
set guioptions-=R
set guioptions-=L

" Save when losing focus
au FocusLost * if !(bufname('%') == '') | :up | endif
au TabLeave * if !(bufname('%') == '') | :up | endif
au BufLeave * if !(bufname('%') == '') | :up | endif
