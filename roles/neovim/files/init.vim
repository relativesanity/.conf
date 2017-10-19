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

" install CtrlP for fuzzy filename navigation
Plugin 'ctrlpvim/ctrlp.vim'
" install NERDTree for directory navigation
Plugin 'scrooloose/nerdtree'
" install Airline for better status UI
Plugin 'vim-airline/vim-airline'
" install iceberg colorscheme
Plugin 'cocopon/iceberg.vim'

" install Ack for smarter file searching
Plugin 'mileszs/ack.vim'
" install Deoplete for autocompletion
Plugin 'Shougo/deoplete.nvim'
" install Commentary for commenting code
Plugin 'tpope/vim-commentary'
" install ragtag for markup shortcuts
Plugin 'tpope/vim-ragtag'

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

" enables tabline for airline
let g:airline#extensions#tabline#enabled=1
" uses powerline for airline
let g:airline_powerline_fonts=1
" gets rid of extraneous crap in NERDTree UI
let NERDTreeMinimalUI=1
" ignore some directories in CTRL-P
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|bower_components\|.sass-cache\|.git\|build\|log\|tmp'
" enable deoplete
let g:deoplete#enable_at_startup = 1

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

" allows autocompletion to select the first option by default
set completeopt+=noinsert
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

" defines handy key commands
nmap <LEADER>k :NERDTreeToggle<CR>
