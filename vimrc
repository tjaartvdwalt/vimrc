source $HOME/.vim/config/general.vimrc
source $HOME/.vim/config/packages.vimrc
source $HOME/.vim/config/projections.vimrc
source $HOME/.vim/config/keys.vimrc
source $HOME/.vim/config/theme.vimrc

" Update minpac
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Source the vimrc file after saving any .vimrc file
if has("autocmd")
   autocmd bufwritepost *.vimrc source $MYVIMRC
endif

