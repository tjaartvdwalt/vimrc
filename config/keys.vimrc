" map <C-n> :Explore<CR>
" Save with ctrl-s
" nmap <C-s> :w<CR>
" imap <C-s> <Esc>:w<CR>
" nmap <C-z> :wq<CR>
" imap <C-z> <Esc>:wq<CR>

" nmap <Leader>s :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR; clear<CR>

" Command mode shortcut
nmap <C-u> :
imap <C-u> <Esc>:

" Close other windows, except currently focused one
cnoreabbrev o only

nmap <leader>v :edit ~/.vim/config<CR>
nmap <silent> <leader>s :set spell!<CR>
set spellfile=~/.vim/spell/en.utf-8.add

cnoreabbrev ex Explore

nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <Leader>cg :Gcd<CR>:pwd<CR>
