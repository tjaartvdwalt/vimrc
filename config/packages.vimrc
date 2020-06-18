" Initialize minpac
packadd minpac

"built in plugin
packadd! matchit

call minpac#init()

" Set shortcut commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! PackStatus call minpac#status()

call minpac#add('tpope/vim-fugitive')
cnoreabbrev g Git
cnoreabbrev gr Gread
cnoreabbrev gw Gwrite
cnoreabbrev gd Gvdiffsplit
cnoreabbrev gs Git stash
augroup turbo_commit
  autocmd!
  autocmd BufEnter COMMIT_EDITMSG startinsert
augroup END

call minpac#add('mileszs/ack.vim')
let g:ackprg = 'ag --vimgrep'

command! -nargs=1 AckProject execute "Ack! <args> " . FindRootDirectory()
cnoreabbrev ack Ack!
nnoremap <Leader>a :AckProject<Space>


call minpac#add('airblade/vim-rooter')
let g:rooter_manual_only = 1
let g:rooter_silent_chdir = 1
" let g:rooter_resolve_links = 1

" Cd to project root
command Cdp execute "cd " . FindRootDirectory() | execute "pwd"
" Cd to current file path
command Cdc cd %:p:h

call minpac#add('whiteinge/diffconflicts')
let g:diffconflicts_vcs = 'git'

" call minpac#add('christoomey/vim-conflicted')
" let g:diffget_local_map = 'gl'
" let g:diffget_upstream_map = 'gu'

call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
let g:airline_powerline_fonts = 1
" Poor man's airline plugin, add conflicted text to section c
" let g:airline_section_c = '%F    %{ConflictedVersion()}'
let g:airline#extensions#syntastic#enabled = 1
" let airline#extensions#syntastic#error_symbol = 'E:'
" let airline#extensions#syntastic#stl_format_err = '%E{[%fe(#%e)]}'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

call minpac#add('junegunn/gv.vim')
cnoreabbrev gl GV

call minpac#add('sodapopcan/vim-twiggy')
cnoreabbrev gt Twiggy

let g:twiggy_local_branch_sort = 'date'
let g:twiggy_remote_branch_sort = 'date'

call minpac#add('tommcdo/vim-fubitive')

call minpac#add('dense-analysis/ale')
let g:ale_completion_enabled = 0
let g:ale_completion_tsserver_autoimport = 1
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1

" call minpac#add('junegunn/fzf.vim')
" let g:fzf_preview_window = ''

call minpac#add('airblade/vim-gitgutter')

call minpac#add('tpope/vim-obsession')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-rake')
call minpac#add('tpope/vim-sleuth')
call minpac#add('tpope/vim-sensible')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-dadbod')
call minpac#add('tpope/vim-heroku')

cnoreabbrev a A

call minpac#add('ryanoasis/vim-devicons')
call minpac#add('ntpeters/vim-better-whitespace')

" call minpac#add('ervandew/supertab')
" let g:SuperTabDefaultCompletionType = '<C-n>'

call minpac#add('ycm-core/YouCompleteMe')
" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

call minpac#add('sirver/ultisnips')
call minpac#add('honza/vim-snippets')
" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<right>"
" let g:UltiSnipsJumpBackwardTrigger = "<left>"


call minpac#add('mbbill/undotree')
nmap <silent> <Leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>

call minpac#add('tpope/vim-dispatch')
call minpac#add('tpope/vim-rhubarb')
call minpac#add('tpope/vim-vinegar')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-obsession')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('pangloss/vim-javascript')
call minpac#add('mattn/emmet-vim')
call minpac#add('tpope/vim-endwise')

call minpac#add('vim-ruby/vim-ruby')
let ruby_fold = 1
let ruby_spellcheck_strings = 1

call minpac#add('tpope/vim-bundler')
call minpac#add('tpope/vim-unimpaired')

call minpac#add('alvan/vim-closetag')
call minpac#add('machakann/vim-highlightedyank')

call minpac#add('maxbrunsfeld/vim-yankstack')

" fix meta-keys which generate <Esc>a .. <Esc>z
let c='a'
while c <= 'z'
  exec "set <M-".toupper(c).">=\e".c
  exec "imap \e".c." <M-".toupper(c).">"
  let c = nr2char(1+char2nr(c))

endw

" call minpac#add('chiel92/vim-autoformat')
" cnoreabbrev f Autoformat

call minpac#add('sbdchd/neoformat')
cnoreabbrev f Neoformat
" let g:neoformat_verbose = 1

call minpac#add('neowit/vim-force.com')
" Download the jar from https://github.com/neowit/tooling-force.com/releases
let g:apex_tooling_force_dot_com_path = '/home/tjaart/lib/tooling-force.com-0.4.7.0.jar'
let g:apex_backup_folder='/tmp/apex/backup'
let g:apex_temp_folder='/tmp/apex/gvim-deployment'
let g:apex_properties_folder='/tmp/apex/properties'

call minpac#add('blindfs/vim-taskwarrior')
call minpac#add('tpope/vim-speeddating')

" call minpac#add('her/central.vim')
" let g:central_cleanup_enable = 30
call minpac#add('conradirwin/vim-bracketed-paste')

call minpac#add('mtth/scratch.vim')
let g:scratch_autohide = 1
let g:scratch_insert_autohide = 1

call minpac#add('plasticboy/vim-markdown')
" let g:vim_markdown_folding_disabled = 1
call minpac#add('iamcco/markdown-preview.nvim', {'do': 'call mkdp#util#install()'})

call minpac#add('gcmt/taboo.vim')
let g:taboo_renamed_tab_format = " [%l]%I%m"
let g:taboo_tabline = 0
set sessionoptions+=tabpages,globals

call minpac#add('leafOfTree/vim-vue-plugin')
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_use_typescript = 1
let g:vim_vue_plugin_use_sass = 1
let g:vim_vue_plugin_highlight_vue_attr = 1
let g:vim_vue_plugin_use_foldexpr = 1
call minpac#add('digitaltoad/vim-pug')

" Wayland system clipboard copy/paste. Can remove this once this issue has
" been resolved:  https://github.com/vim/vim/issues/5157
call minpac#add('kana/vim-fakeclip')
call minpac#add('wincent/terminus')

" Python folding
call minpac#add('tmhedberg/simpylfold')
" XML folding
call minpac#add('vim-scripts/XML-Folding')
au BufNewFile,BufRead *.xml,*.htm,*.html so ~/.vim/pack/minpac/start/XML-Folding/plugin/XMLFolding.vim

call minpac#add('jiangmiao/auto-pairs')

call minpac#add('jlanzarotta/bufexplorer')
nnoremap <Leader>b :BufExplorer<CR>
let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerShowTabBuffer=1

call minpac#add('cespare/vim-toml')


" call minpac#add('vim-syntastic/syntastic')
" call minpac#add('Quramy/tsuquyomi')

" call minpac#add('preservim/nerdtree')
" let g:NERDTreeWinPos="right"

