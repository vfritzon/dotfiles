filetype plugin indent on
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set number
set smartindent
set showmatch
set backspace=indent,eol,start
syntax on

set nowrap
set nocompatible
set nobackup
set nowritebackup
set noswapfile

set mouse=a
set ttymouse=sgr
set ignorecase
set smartcase
set incsearch
set hlsearch
"
" open splits to right and bottom
set splitbelow
set splitright

" cursor
let &t_SI = "\<esc>[5 q" " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q" " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise
