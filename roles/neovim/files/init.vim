set encoding=utf-8
set nocompatible
filetype off

" ______ PLUGINS ______
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'cocopon/iceberg.vim'

call vundle#end()
" ---------------------

if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif
if has('autocmd')
  filetype plugin indent on
endif

set termguicolors
colorscheme iceberg

let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let NERDTreeMinimalUI=1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|bower_components\|.sass-cache\|.git\|build\|log\|tmp'

set autoindent
set foldmethod=syntax foldlevelstart=30
set ruler
set tabstop=2 shiftwidth=2 expandtab
set cursorline

set listchars=tab:>-,trail:-
set list

set number
set hlsearch
set noswapfile

map <C-k> :NERDTreeToggle<CR>
