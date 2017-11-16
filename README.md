# How to use this repo #

## Clone the repo ##
```sh
cd ~/dotfiles
git clone git@github.com:tjaartvdwalt/vimrc.git
```

## Use stow, or symlink the file to $HOME/.vimrc##

```
stow --dir=/home/user/dotfiles --target=/home/user --ignore=\.gitignore
```

or

```sh
ln -s .vimrc ~
ln -s .vim ~
```

## Install vim-plug ##
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Update the plugins using Vim ##

```sh
vim
:PlugUpdate
```

