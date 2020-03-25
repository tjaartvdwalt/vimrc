map <C-a> :A<CR>
" map <C-n> :Explore<CR>
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

" Close other windows, except currently focused one
nmap <C-o> :only<CR>

nmap <C-i> :Autoformat<CR>
imap <C-i> <Esc>:Autoformat<CR>a

nmap <C-b> :b#<CR>
imap <C-b> <Esc>:b#<CR>

nmap <leader>v :edit ~/.vim/config<CR>
nmap <silent> <leader>s :set spell!<CR>

cnoreabbrev ex Explore

nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <Leader>cg :Gcd<CR>:pwd<CR>

nmap <Leader>b :Buffers<CR>
nmap <Leader>f :GFiles<CR>
nmap <Leader>m :Maps<CR>

nmap <Leader>gt :Twiggy<CR>

nmap <silent> <Leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>

nmap <silent> <Leader>t :terminal<CR>

command! -nargs=1 Ag execute "Ack! <args> " . rooter#FindRootDirectory()
