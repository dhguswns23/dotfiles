# The Dot Files

## Included

Every Plug-ins will be installed by [junegunn/vim-plug](https://github.com/junegunn/vim-plug).

* vim
  * [NERDTree](https://github.com/scrooloose/nerdtree)
  * [Airline](https://github.com/vim-airline/vim-airline)
  * [Tagbar](https://github.com/majutsushi/tagbar)
  * [Syntastic](https://github.com/vim-syntastic/syntastic)
  * [Vim-fugitive](https://github.com/tpope/vim-fugitive)
  * [Ultisnips](https://github.com/SirVer/ultisnips)
  * [Numbers](https://github.com/myusuf3/numbers.vim)
  * [Supertab](https://github.com/ervandew/supertab)
  * [fzf](https://github.com/junegunn/fzf)
  * [fzf-vim](https://github.com/junegunn/fzf.vim)
  * [Vim-javascript](https://github.com/pangloss/vim-javascript)
  * [Vim-bufkill](https://github.com/vim-scripts/bufkill.vim)

* tmux
* python3
  * flake8

## Install

### Precontidions

- silversearcher-ag
- ctags

1. Clone git repository at home directory.

```bash
git clone https://github.com/dhguswns23/dotfiles
```

2. Install related packages.

* Install flake8 for python3 lint.

```bash
sudo pip3 install flake8
```

If you need more information, go [here](http://flake8.pycqa.org/en/latest/)

* Install silversearcher-ag for global search.


```bash
sudo apt-get install silversearcher-ag # Ubuntu

brew install the_silver_searcher # macOS
```

3. Install CTags for Tagbar
```bash
sudo apt-get install ctags # Ubuntu

brew install ctags # macOS
```

If you need more information, go [here](https://github.com/ggreer/the_silver_searcher)

4. Link Vim configuration files.

```bash
ln -s /path/to/repo/.vim ~/.vim
ln -s /path/to/repo/.vimrc ~/.vimrc
```

5. Open .vimrc files and run below line at the vim.
```bash
vim ~/.vimrc
```

```bash
:PlugInstall
```

6. Reload tmux configuration if it is needed.

```bash
tmux source-file /path/to/.tmux.conf
```


## Shortcuts

* <F2> Open NerdTree

* <F3> Toggle Numbers

* <F4> On / Off Numbers

* <F5> Flake8 Pylint

* <F8> Turn On / Off Paste Mode

* <F9> Toggle Tagbar

## Vim Command

* BD: delete buffer without closing windows.

* BW: wipe a file from buffer without closing windows.

* BB: move backwards through recently accessed buffers.

* BF: move forwards

See details on [here](https://github.com/qpkorr/vim-bufkill)

* Files: open fzf-vim on vim.

* Ag: search string globally.
