" basic configuration

set number
set nocompatible
syntax on
set ruler
set mouse=a
set encoding=utf-8
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
set softtabstop=2
set relativenumber
set textwidth=100
set wrap
set linebreak
set cursorline
set showmatch
set hlsearch
set incsearch
set spell spelllang=en_us
set noerrorbells
set visualbell

" cursor style
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" complete brackets

inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ` ``<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O

"vim-plug configuration

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/seoul256.vim'

call plug#end()

" mapping
inoremap jj <esc>

" fzf configuration
map ; :Files<CR>

" nerdtree congfiguration
map <C-o> :NERDTreeToggle<CR>
map <C-n> :NERDTreeFocus<CR>

" seoul256
let g:seoul256_background = 233
colo seoul256
