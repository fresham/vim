let mapleader="\\"

nmap <silent> <Leader>l :set list!<CR>  " toggle invisibles
nmap <Leader>n :NERDTree<CR>            " open NERDTree

" fuzzy finder mappings
nmap <Leader>f :FufFile<CR>
nmap <Leader>F :FufCoverageFile<CR>
nmap <Leader>L :FufLine<CR>
nmap <Leader>m :FufMruFile<CR>
nmap <Leader>M :FufMruCmd<CR>

" rspec
map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>R :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

" error navigation
nmap <Leader>[ :cprevious<CR>
nmap <Leader>] :cnext<CR>
nmap <Leader>} :cfirst<CR>
nmap <Leader>} :clast<CR>
