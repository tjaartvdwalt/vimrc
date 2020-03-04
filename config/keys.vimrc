map <C-a> :e #<CR>
map <C-n> :Explore<CR>
" Save with ctrl-s
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a
nmap <C-z> :wq<CR>
imap <C-z> <Esc>:wq<CR>
nmap <C-q> :q<CR>
imap <C-q> <Esc>:q<CR>

" nmap <Leader>s :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR; clear<CR>

" Command mode shortcut
nmap <C-u> :
imap <C-u> <Esc>:

nnoremap <C-Left> <C-w>h
nnoremap <C-Right> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Down> <C-w>l

" Close other windows, except currently focused one
nmap <C-o> :only<CR>

nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <Leader>cg :Gcd<CR>:pwd<CR>

" Plug 'tpope/vim-fugitive'
nmap <Leader>gf :Git fetch<CR>
nmap <Leader>gg :Git<CR>
nmap <Leader>g<Space> :Git<Space>
nmap <Leader>gl :Gclog<CR>
nmap <Leader>gp :Git push<CR>
nmap <Leader>gr :Gread
nmap <Leader>gw :Gwrite
" Git log viewer
" Plug 'junegunn/gv.vim'
nmap <Leader>gv :GV<CR>

nmap <C-i> :ALEFix<CR>:w<CR>
imap <C-i> <Esc>:ALEFix<CR>:w<CR>a

nmap <C-b> :Buffers<CR>
imap <C-b> <Esc>:Buffers<CR>

nmap <Leader>. :Commentary<CR>

nmap <Leader>b :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>m :Maps<CR>

nmap <Leader>gt :Twiggy<CR>

nmap <Leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>

nmap <Leader>a :Ack!<Space>
nmap <Leader>t :terminal<CR>

autocmd FileType dirvish nnoremap <Buffer> gh :let g:dirvish_mode = ':silent keeppatterns g@\v/\.[^\/]+/?$@d'<Bar>Dirvish %<CR>
autocmd FileType dirvish nnoremap <Buffer> gH :let g:dirvish_mode = ''<Bar>Dirvish %<CR>
