set encoding=utf-8 " set encoding
set nocompatible " ensure nocompatible is set, regardless of where this is loaded from
filetype off " disable filetype detection before running Vundle

" ______ PLUGINS ______
set rtp+=~/.vim/bundle/Vundle.vim " include Vundle bundle in realtime path
call vundle#begin() " begin Vundle operations
Plugin 'VundleVim/Vundle.vim' " allow Vundle to manage Vundle

Plugin 'ctrlpvim/ctrlp.vim' " install CtrlP for fuzzy filename navigation
Plugin 'scrooloose/nerdtree' " install NERDTree for directory navigation
Plugin 'vim-airline/vim-airline' " install Airline for better status UI
Plugin 'cocopon/iceberg.vim' " install iceberg colorscheme

Plugin 'mileszs/ack.vim' " install Ack for smarter file searching
Plugin 'Shougo/deoplete.nvim' " install Deoplete for autocompletion
Plugin 'tpope/vim-commentary' " install Commentary for commenting code
Plugin 'tpope/vim-ragtag' " install ragtag for markup shortcuts

call vundle#end() " finish Vundle operations
" ---------------------

filetype plugin indent on " enable filetype detection after running Vundle to allow new types to be picked up

if !exists('g:syntax_on') " unless syntax highlighting is already enabled…
  syntax enable " enable syntax highlighting
endif
if executable('ag') " if ag is available on the system…
  let g:ackprg = 'ag --vimgrep' " configure Ack to use ag
endif

set termguicolors " enables 24-bit color
colorscheme iceberg " chooses colorscheme

let g:airline#extensions#tabline#enabled=1 " enables tabline for airline
let g:airline_powerline_fonts=1 " uses powerline for airline
let NERDTreeMinimalUI=1 " gets rid of extraneous crap in NERDTree UI
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|bower_components\|.sass-cache\|.git\|build\|log\|tmp' " ignore some directories in CTRL-P
let g:deoplete#enable_at_startup = 1 " enable deoplete

set autoindent " follows indent of previous line when creating a new line
set smartindent " follows language-specific indenting rules when creating a new line
set foldmethod=syntax foldlevelstart=30 " configures folding
set tabstop=2 shiftwidth=2 expandtab " configures tabs
set cursorline " highlight line containing cursor
set completeopt+=noinsert " allows autocompletion to select the first option by default

set listchars=tab:>-,trail:- " defines tab and trailing space indicators
set list " displays hidden characters such as spaces and tabs

set number " show line numbers
set hlsearch " highlight the results of the last search
set noswapfile " disable saving of swapfiles

" defines handy key commands
map <C-k> :NERDTreeToggle<CR>
