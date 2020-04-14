" map <C-n> :Explore<CR>
" Save with ctrl-s
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a
nmap <C-z> :wq<CR>
imap <C-z> <Esc>:wq<CR>

" Wayland system clipboard copy/paste. Can remove this once this issue has
" been resolved:  https://github.com/vim/vim/issues/5157
xnoremap "+y y:call system("wl-copy", @")<cr>
nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p

" nmap <Leader>s :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR; clear<CR>

" Command mode shortcut
nmap <C-u> :
imap <C-u> <Esc>:

" Close other windows, except currently focused one
cnoreabbrev o only
nmap <C-o> :only<CR>

nmap <C-b> :b#<CR>
imap <C-b> <Esc>:b#<CR>

nmap <leader>v :edit ~/.vim/config<CR>
nmap <silent> <leader>s :set spell!<CR>

" Tab related command shortcuts
cnoreabbrev t tab
cnoreabbrev te tabedit
cnoreabbrev tc tabclose
cnoreabbrev tm tabm
cnoreabbrev to tabonly
cnoreabbrev ts tabs

cnoreabbrev ex Explore

nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <Leader>cg :Gcd<CR>:pwd<CR>

nmap <Leader>b :Buffers<CR>
nmap <Leader>f :GFiles<CR>
nmap <Leader>m :Maps<CR>

nmap <silent> <Leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>
