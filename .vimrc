call plug#begin('~/.vim/plugged')
set number
set list

let mapleader = "."

syntax enable
"set background=dark
Plug 'liuchengxu/space-vim-dark'

"Save with ctrl-s
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a
nmap <C-z> :wq<CR>
imap <C-z> <Esc>:wq<CR>

"Command mode shortcut
nmap <C-u> :
imap <C-u> <Esc>:

Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'
nmap <Leader>a :Ack!

Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
"Start vim with nerdtree open, if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Close vim if nerdtree is only buffer left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

Plug 'scrooloose/nerdcommenter'
filetype plugin on

Plug 'airblade/vim-rooter'
let g:rooter_silent_chdir = 1
let g:rooter_resolve_links = 1

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'
nmap <Leader>gf :Gpull<CR>
nmap <Leader>gg :Git<CR>
nmap <Leader>g<Space> :Git<Space>
nmap <Leader>gp :Gpush<CR>
nmap <Leader>gr :Gread
nmap <Leader>gw :Gwrite
" Branching plugin for fugitive
Plug 'idanarye/vim-merginal'
nmap <Leader>gb :Merginal<CR>
" Gbrowse Bitbucket support
Plug 'tommcdo/vim-fubitive'
" Gbrowse Github support
Plug 'tpope/vim-rhubarb'
" Gbrowse Gitlab support
Plug 'shumphrey/fugitive-gitlab.vim'
" Git log viewer
Plug 'cohama/agit.vim'
nmap <Leader>gl :Agit<CR>

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

Plug 'ryanoasis/vim-devicons'
set encoding=UTF-8

Plug 'nathanaelkane/vim-indent-guides'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'mbbill/undotree'
let g:undotree_WindowLayout = 3
nmap u :UndotreeToggle<CR>:UndotreeFocus<CR>

Plug 'ntpeters/vim-better-whitespace'

call plug#end()

colorscheme space-vim-dark
hi Comment guifg=#5C6370 ctermfg=59
hi Comment    cterm=italic
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

