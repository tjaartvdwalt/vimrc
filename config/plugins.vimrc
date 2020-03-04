" Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'

" Plug 'airblade/vim-rooter'
"let g:rooter_silent_chdir = 1
let g:rooter_resolve_links = 1
let g:rooter_manual_only = 1

" Plug 'sodapopcan/vim-twiggy'
let g:twiggy_local_branch_sort = 'date'
let g:twiggy_remote_branch_sort = 'date'

augroup turbo_commit
  autocmd!
  autocmd BufEnter COMMIT_EDITMSG startinsert
augroup END

" Plug 'mbbill/undotree'
let g:undotree_WindowLayout = 3

let g:deoplete#auto_complete_start_length = 1
let g:deoplete#enable_at_startup = 1
let g:nvim_typescript#javascript_support = 1

" let g:dirvish_mode = ':silent keeppatterns g@\v/\.[^\/]+/?$@d _'
"Start vim with nerdtree open, if no file specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Close vim if nerdtree is only buffer left
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Toggle nerdtree
" map <C-n> :NERDTreeToggle<CR>
" let g:NERDTreeWinPos = "right"

" let g:ale_completion_enabled = 1

"set omnifunc=syntaxcomplete#Complete
"set omnifunc=ale#completion#OmniFunc
"set completeopt=longest,menuone


