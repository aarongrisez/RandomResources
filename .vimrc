"This is Aaron Grisez's personal preference for .vimrc settings
"
"It was essentially copied from:
"https://realpython.com/vim-and-python-a-match-made-in-heaven/#vim-extensions
"
"Check out realpython.com if you haven't; they're really cool.

set nocompatible        " Required for Vundle Setup
filetype off            " Required for Vundle Setup

" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/plugins/')

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" ALL PLUGINS

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jnurmine/Zenburn'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" ALL PLUGINS MUST BE BEFORE THIS LINE

call vundle#end()           " Required
filetype plugin indent on   " Required

" Navigating between splits w/o using ctrl + w
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" hide .pyc files in filetree
let NERDTreeIgnore=['\.pyc$', '\~$']

" load filetree automatically when vim starts
au vimenter * NERDTree

" set colorscheme
colorscheme zenburn

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

" Enable UTF-8 support
set encoding=utf-8

" Set indentation and line length for PEP-8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" show line numbers
set number

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" prettify code
let python_highlight_all=1
syntax on
