source /opt/pearl/boot/vim/pearl.vim

filetype plugin on
set omnifunc=syntaxcomplete#Complete

" autocmd bufwritepost *.js silent !standard-format -w %
set autoread

"set background=dark
"colorscheme vim-colors-solarized

:imap <C-U> <Esc>
:nmap <C-C> :
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'ervandew/supertab'
Plug 'vim-syntastic/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'

call plug#end()
