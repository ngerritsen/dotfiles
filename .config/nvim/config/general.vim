" This file contains general vim settings.

" General
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undo
set undofile
set hidden
set nowrap
set nohlsearch
set timeoutlen=700
set ttimeoutlen=10
set history=1000

" Interface
set number
set relativenumber
set colorcolumn=100
set laststatus=2
set signcolumn=yes
set cursorline
set noshowmode

" Tabs
set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

" Tabs per language
autocmd FileType html setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab

" Splits
set splitbelow
set splitright
set wmh=0

" Italics
set t_ZH=^[[3m
set t_ZR=^[[23m

" 256 Colors
set t_Co=256
set termguicolors

colorscheme gruvbox
