" set encoding
set encoding=utf-8
" ensure nocompatible is set, regardless of where this is loaded from
set nocompatible
" disable filetype detection before running Vundle
filetype off

" ______ PLUGINS ______
" include Vundle bundle in realtime path
set rtp+=~/.vim/bundle/Vundle.vim
" begin Vundle operations
call vundle#begin()
" allow Vundle to manage Vundle
Plugin 'VundleVim/Vundle.vim'

" install iceberg colorscheme
Plugin 'cocopon/iceberg.vim'

" install Ack for smarter file searching
Plugin 'mileszs/ack.vim'
" install trailing whitespace to highlight trailing whitespace
Plugin 'bronson/vim-trailing-whitespace'

" install SCSS syntax
Plugin 'cakebaker/scss-syntax.vim'

" finish Vundle operations
call vundle#end()
" ---------------------

" enable filetype detection after running Vundle to allow new types to be picked up
filetype plugin indent on

" unless syntax highlighting is already enabled…
if !exists('g:syntax_on')
  " enable syntax highlighting
  syntax enable
endif
" if ag is available on the system…
if executable('ag')
  " configure Ack to use ag
  let g:ackprg = 'ag --vimgrep'
endif

" enables 24-bit color
set termguicolors
" chooses colorscheme
colorscheme iceberg

" follows indent of previous line when creating a new line
set autoindent
" follows language-specific indenting rules when creating a new line
set smartindent
" configures folding
set foldmethod=syntax foldlevelstart=30
" configures tabs
set tabstop=2 shiftwidth=2 expandtab
" highlight line containing cursor
set cursorline
" Horizontal split below current.
set splitbelow
" Vertical split to right of current.
set splitright
" Make searching case insensitive
set ignorecase
" ... unless the query has capital letters.
set smartcase
" Use 'g' flag by default with :s/foo/bar/.
set gdefault
" Use 'magic' patterns (extended regular expressions).
set magic
" highlight 100th column
set colorcolumn=100

" defines tab and trailing space indicators
set listchars=tab:>-,trail:-
" displays hidden characters such as spaces and tabs
set list

" show line numbers
set number
" highlight the results of the last search
set hlsearch
" disable saving of swapfiles
set noswapfile
" allow find to recursively search directories
set path+=**
