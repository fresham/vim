" Set PATH variables that GVim doesn't pick up
let $PATH = $PATH . ':/opt/bin/' . ':~/node_modules/.bin/' . ':./node_modules/.bin'

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

" Don't quit if on the last window
function! DontQuit()
  if NumberOfWindows() != 1
    let v:errmsg = ""
    silent! quit
    if v:errmsg != ""
      "echohl ErrorMsg | echomsg v:errmsg | echohl NONE
      "echoerr v:errmsg
      echohl ErrorMsg | echo v:errmsg | echohl NONE
    endif
  else
    echohl Error | echo "Can't quit the last window...use :quit" | echohl None
  endif
endfunction

function! NumberOfWindows()
  let i = 1
  while winbufnr(i) != -1
    let i = i+1
  endwhile
  return i - 1
endfunction

cnoremap <silent> q<Cr> :call DontQuit()<Cr>
