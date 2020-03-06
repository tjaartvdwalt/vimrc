# Using this repo with Vim 8 #

## Clone the repo as your ~/.vim directory ##

Clone the repo

```sh
git clone git@github.com:tjaartvdwalt/vimrc.git ~/.vim
```

## Symlink vimrc ##

```sh
ln -s ~/.vim/vimrc ~/.vimrc
```

## Installing packages ##

I use the vim 8, buit in package manager, with [minpac](https://github.com/k-takata/minpac).
On first install, minpac needs to be manually cloned from its Git repo (minpac automatically updates itself in future)

```sh
mkdir -p ~/.vim/pack/minpac/opt
cd ~/.vim/pack/minpac/opt
git clone https://github.com/k-takata/minpac.git
```

For convenience I wrapped the minpac functions in commands 
`:PackUpdate` -> Installs/Updates packages
`:PackClean` -> Deletes packages that have been removed from the configuration
`:PackStatus` -> Shows the current status of installed packages
