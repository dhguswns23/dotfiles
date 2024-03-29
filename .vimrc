" NOTE: exuberant-ctags should be installed before do PlugInstall
" -- Default Settings --

set shell=/bin/zsh
set tags=./tagsset tags=./tags,tags
set tags+=../tags
set tags+=../../tags
set tags+=../../../tags
set tags+=../../../../tags
set tags+=../../../../../tags
set tags+=../../../../../../tags
set tags+=../../../../../../../tags
set tags+=../../../../../../../../tags

let START_PATH = "~"

" -- for vim-devicons
set encoding=UTF-8

call plug#begin(START_PATH.'/.vim/plugged')

" -- Plugin Set --
Plug 'ryanoasis/vim-devicons'

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

" Color Scheme
Plug 'junegunn/seoul256.vim'

" fugitive
Plug 'tpope/vim-fugitive'

" Ultisnips
Plug 'SirVer/ultisnips'

" numbers
Plug 'myusuf3/numbers.vim'

" Syntastic
Plug 'vim-syntastic/syntastic'

" Vim-javascript
Plug 'pangloss/vim-javascript'

" bufkill
Plug 'qpkorr/vim-bufkill'

" Auto Code Formatter
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

call plug#end()

" Set Autoformat

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer autopep8
augroup END

" Autoload NERDTree when vim is opened.
autocmd VimEnter * NERDTree

" Auto close NERDTree when a last buffer remains.
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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
colorscheme codedark

" -- Key Binding --

" paste mode
set pastetoggle=<F8>
" toggle tagbar
nmap <F9> :TagbarToggle<CR>
" toggle line numbers
nmap <F3> :NumbersToggle<CR>
nmap <F4> :NumbersOnOff<CR>
" toggle NERDTree
nmap <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F5> :SyntasticCheck<CR>

" -- Default Vim Settings --
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
" -- CSS, SCSS, JS Settings --

autocmd FileType css setlocal tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab conceallevel=1

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

syntax on
filetype plugin indent on

" -- Ignore files on .gitignore --
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" -- Cursor Movement on Insert Mode --
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" -- CTags Key Binding --
nnoremap <F11> <C-]>
nnoremap <F12> <C-t>

" -- backspace settings
set backspace=indent,eol,start
