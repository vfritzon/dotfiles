call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'

call plug#end()

set termguicolors     " enable true colors support
let ayucolor="mirage" " for mirage version of theme
colorscheme ayu

filetype plugin indent on
set sw=4
set ts=4

" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

"Cursor
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" Leader
let mapleader=","

"Searching
set incsearch
set hlsearch
nnoremap <cr> :nohlsearch<cr>
nnoremap <leader>t :Files<cr>

"Movement
nnoremap E $

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Because I often accidentally :W when I mean to :w.
command! W w

"Backup & undo - https://coderwall.com/p/sdhfug/vim-swap-backup-and-undo-files
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//


noremap <leader>s :update<cr>
noremap <Leader>a :Ack <cword><cr>

set ignorecase smartcase

set nowrap
set number
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
