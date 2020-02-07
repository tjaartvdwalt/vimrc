call plug#begin('~/.vim/plugged')
set number

syntax enable
set background=dark
colorscheme default

"Save with ctrl-s
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a

"Command mode shortcut
nmap <C-u> :
imap <C-u> <Esc>:

Plug 'preservim/nerdtree'
"Start vim with nerdtree open, if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Close vim if nerdtree is only buffer left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

Plug 'preservim/nerdcommenter'
filetype plugin on

"Plug 'powerline/powerline'
"let g:powerline_pycmd="py3"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'
" Branching plugin for fugitive
Plug 'idanarye/vim-merginal'
" Gbrowse Bitbucket support
Plug 'tommcdo/vim-fubitive'
" Gbrowse Github support
Plug 'tpope/vim-rhubarb'
" Gbrowse Gitlab support
Plug 'shumphrey/fugitive-gitlab.vim'

"Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
Plug 'w0rp/ale'

filetype plugin on
"set omnifunc=syntaxcomplete#Complete
set omnifunc=ale#completion#OmniFunc
set completeopt=longest,menuone
map <C-i> :ALEFix<CR>
Plug 'vim-scripts/AutoComplPop'

Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
"Plug 'valloric/youcompleteme'
"Plug 'ctrlpvim/ctrlp.vim'

Plug 'mileszs/ack.vim'

Plug 'jeetsukumaran/vim-buffergator'
Plug 'sunaku/vim-shortcut'

Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-projectionist'

Plug 'wincent/command-t'
Plug 'postmodern/chruby'

call plug#end()

