"    ___       __
"  /' _ `\   /'_ `\
"  /\ \/\ \ /\ \L\ \                 Niels Gerritsen
"  \ \_\ \_\\ \____ \                https://gitlab.com
"   \/_/\/_/ \/___L\ \  _______      https://github.com/ngerritsen/dotfiles
"              /\____/ /\______\
"              \_/__/  \/______/

" General
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undo
set undofile
set hidden
set nowrap
set nohlsearch
set timeoutlen=600
set ttimeoutlen=10
set history=1000

" Interface
set number
set relativenumber
set colorcolumn=100
set laststatus=2
set cursorline
set noshowmode

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Splits
set splitbelow
set splitright
set wmh=0

" Keys
let mapleader = "\<space>"

" Better Escape
inoremap <silent> jj <Esc>
cnoremap <silent> jj <Esc>
vnoremap <silent> jj <Esc>

" Splits
nnoremap <Leader>- :resize -5<CR>
nnoremap <Leader>= :resize +5<CR>
nnoremap <Leader>] :vertical resize +5<CR>
nnoremap <Leader>[ :vertical resize -5<CR>

" Quick edit and source vimrc
nnoremap <silent> <Leader>, :e $MYVIMRC<CR>
nnoremap <silent> <Leader>,e :e $MYVIMRC<CR>
nnoremap <silent> <Leader>,s :source $MYVIMRC<CR>

" Quickfix lists
nnoremap <silent> <C-j> :cnext<CR>
nnoremap <silent> <C-k> :cprev<CR>
