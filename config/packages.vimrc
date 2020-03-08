" Initialize minpac
packadd minpac
call minpac#init()

" Set shortcut commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! PackStatus call minpac#status()

call minpac#add('tpope/vim-fugitive')
call minpac#add('mileszs/ack.vim')
" call minpac#add('airblade/vim-rooter')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('tpope/vim-fugitive')
call minpac#add('junegunn/gv.vim')
call minpac#add('sodapopcan/vim-twiggy')
call minpac#add('tommcdo/vim-fubitive')
call minpac#add('dense-analysis/ale')
let g:ale_completion_enabled = 0
let g:ale_completion_tsserver_autoimport = 1
call minpac#add('junegunn/fzf.vim')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-rake')
call minpac#add('tpope/vim-sleuth')
call minpac#add('tpope/vim-sensible')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-projectionist')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('ntpeters/vim-better-whitespace')
call minpac#add('sirver/ultisnips')
call minpac#add('mbbill/undotree')
call minpac#add('tpope/vim-dispatch')
call minpac#add('tpope/vim-rhubarb')
call minpac#add('tpope/vim-vinegar')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-bundler')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('tpope/vim-endwise')
call minpac#add('vim-ruby/vim-ruby')

call minpac#add('Shougo/deoplete.nvim')
let g:deoplete#enable_at_startup = 1
autocmd VimEnter * call deoplete#custom#option('sources', {
\ 'typescript': ['ale'],
\})
call minpac#add('roxma/nvim-yarp')
call minpac#add('roxma/vim-hug-neovim-rpc')
"deoplete completion sources
call minpac#add('takkii/Bignyanco')
call minpac#add('deoplete-plugins/deoplete-jedi')


" Optional packages
call minpac#add('liuchengxu/space-vim-dark', {'type': 'opt'})
call minpac#add('k-takata/minpac', {'type': 'opt'})


