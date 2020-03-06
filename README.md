# How to use this repo #

## Clone the repo as ~/.vim directory ##

Clone the repo, and install packages as submodules

```sh
git clone --recurse-submodules git@github.com:tjaartvdwalt/vimrc.git ~/.vim
```

If you forget the `--recurse-submodules` switch, you can check out submodules after you cloned the repo

```sh
git submodule update --init
```

## Symlink vimrc ##

```sh
ln -s ~/.vim/vimrc ~/.vimrc
```

## Package Management ##

We use the built in vim 8 package management, with minpac wrapper for ease of use.
For the first time, minpac needs to be manually installed (minpac updates are handled by minpac)

```sh
mkdir -p ~/.vim/pack/minpac/opt
cd ~/.vim/pack/minpac/opt
git clone https://github.com/k-takata/minpac.git
```

We have defined convenience commands `:PackUpdate` and `:PackClean` to keep packages in sync
