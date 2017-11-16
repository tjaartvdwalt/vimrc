filetype plugin on
syntax enable
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

" autocmd bufwritepost *.js silent !standard-format -w %
set autoread

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
Plug 'vim-scripts/AutoComplPop'
Plug 'c9s/perlomni.vim'

call plug#end()

"set background=dark
""colorscheme solarized

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
