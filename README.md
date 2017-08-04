# The Dot Files

## Included

* vim
  * NERDTree
  * Airline
  * Tagbar
  * Syntastic
  * Fugitive
  * Ultisnips
  * Numbers
  * Supertab
  * colorschemes

* tmux
* python3
  * flake8

## Install

1. Clone git repository at home directory.

`git clone https://github.com/dhguswns23/dotfiles`

2. Install related packages.

* Install flake8 for python3 lint.

`sudo pip3 install flake8`

If you need more information, go [here](http://flake8.pycqa.org/en/latest/)

* Install silversearcher-ag for global search.

`

sudo apt-get install silversearcher-ag # Ubuntu

brew install the_silver_searcher # Mac OS

`

If you need more information, go [here](https://github.com/ggreer/the_silver_searcher)

3. Open .vimrc files and run below line at the vim.
`vim ~/.vimrc`

`:PlugInstall`
