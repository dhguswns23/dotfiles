call plug#begin('~/.vim/plugged')

" -- Plugin Set --

" Airline
Plug 'vim-airline/vim-airline'

" NERD Tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" supertab
Plug 'ervandew/supertab'

" vim colorschemes
Plug 'flazz/vim-colorschemes'

" tagbar
Plug 'majutsushi/tagbar'
" NOTE: exuberant-ctags should be installed before do PlugInstall

" fugitive
Plug 'tpope/vim-fugitive'

" Ultisnips
Plug 'SirVer/ultisnips'

" numbers
Plug 'myusuf3/numbers.vim'
call plug#end()

" Autoload NERDTree when vim is opened.
autocmd VimEnter * NERDTree

" Auto close NERDTree when a last buffer remains.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Enable Airline Buffer.
let g:airline#extensions#tabline#enabled = 1

" Number Exclude
let g:numbers_exclude = ['tagbar', 'nerdtree']

" Set Color Scheme
colorscheme afterglow

" -- Key Binding --

" paste mode
set pastetoggle=<F8>
" toggle tagbar
nmap <F9> :TagbarToggle<CR>
" toggle line numbers
nmap <F3> :NumbersToggle<CR>
nmap <F4> :NumbersOnOff<CR>

syntax on
filetype plugin indent on
