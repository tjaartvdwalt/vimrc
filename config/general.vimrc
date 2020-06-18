set encoding=UTF-8
" set relativenumber
set nu
set list
set shell=$SHELL
set tabstop=4

set hlsearch
set incsearch
set showcmd

set nofoldenable

set ignorecase
set smartcase

" set autochdir
autocmd BufEnter * silent! lcd %:p:h
autocmd BufEnter * silent! tcd %:p:h

let mapleader = " "
set wildmode=list:longest

syntax enable
filetype plugin on
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

set undofile
set undodir=$HOME/.vim/undo

" augroup OpenQuickFix
"     autocmd!
"     autocmd QuickFixCmdPost [^l]* cwindow
"     autocmd QuickFixCmdPost l*    lwindow
" augroup END

" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
