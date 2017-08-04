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

" Syntastic
Plug 'vim-syntastic/syntastic'

call plug#end()

" Autoload NERDTree when vim is opened.
autocmd VimEnter * NERDTree

" Auto close NERDTree when a last buffer remains.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Enable Airline Buffer.
let g:airline#extensions#tabline#enabled = 1

" Number Exclude
let g:numbers_exclude = ['tagbar', 'nerdtree', 'syntastic']

" Syntastic Setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_mode_map = { 'mode': 'passive',     
                          \ 'active_filetypes': [],     
                          \ 'passive_filetypes': [] } 
let g:syntastic_auto_loc_list=1

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
nnoremap <silent> <F5> :SyntasticCheck<CR>

syntax on
filetype plugin indent on
