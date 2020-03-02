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

## Add a new package ##

```sh
cd ~/.vim/pack/tjaart/start
git submodule add PACKAGE_GIT_URL
git add .gitmodules PACKAGE_NAME
```

## Update packages ##

```sh
git submodule update --remote --merge
git commit
```

## Remove a package ##

```sh
git submodule deinit vim/pack/tjaart/start/PACKAGE_NAME
git rm vim/pack/tjaart/start/PACKAGE_NAME
rm -Rf .git/modules/vim/pack/tjaart/start/PACKAGE_NAME
git commit
```
