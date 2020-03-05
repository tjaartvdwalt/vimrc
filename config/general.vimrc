set encoding=UTF-8
set number
set list
" set autochdir
autocmd BufEnter * silent! cd %:p:h
" set hlsearch

let mapleader = ","
set wildmode=list:longest

syntax enable
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" netrw
" let g:netrw_banner = 0
" let g:netrw_browse_split = 1
" let g:netrw_liststyle = 3
" hide dotfiles
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
let g:netrw_sort_options = "i"

" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
