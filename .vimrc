set nocompatible              " required
filetype off                  " required

" line numbers
set nu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set splitbelow
set splitright

"split navigations
"move to split below
nnoremap <C-J> <C-W><C-J>
" move to split above
nnoremap <C-K> <C-W><C-K>
" move to split right
nnoremap <C-L> <C-W><C-L>
" move to split left
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

Plugin 'tmhedberg/SimpylFold'

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

Plugin 'vim-scripts/indentpython.vim'

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8
Bundle 'Valloric/YouCompleteMe'

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" highlight syntax
let python_highlight_all=1
syntax on
colorscheme challenger_deep

" color themes
syntax enable
if has('nvim') || has('termguicolors')
  set termguicolors
endif

Plugin 'challenger-deep-theme/vim', {'name': 'challenger-deep-theme'}


" file trees
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
Plugin 'kien/ctrlp.vim'


" git commands
Plugin 'tpope/vim-fugitive'

" add status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" copy paste enabled
set clipboard=unnamed