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
set timeoutlen=700
set ttimeoutlen=10
set history=1000

" Interface
set number
set relativenumber
set laststatus=2
set noshowmode

" Tabs
set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent

" Tabs per language
autocmd FileType html setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType php setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab

" Splits
set splitbelow
set splitright
set wmh=0

" Syntax
syntax on


" Keys
let mapleader = "\<space>"

" Better Escape
inoremap <silent> jj <Esc>
cnoremap <silent> jj <Esc>
vnoremap <silent> jj <Esc>

" Configuration
nnoremap <Leader>se :e $MYVIMRC<CR>

" Keep cursor focus while navigating
nnoremap <silent> n nzzzv
nnoremap <silent> N Nzzzv
nnoremap <silent> J mzJ`z

" Terminal
tnoremap <Esc> <C-\><C-n>

" Terminal
tnoremap <Leader>h :noh<CR>

" Quickfix lists
nnoremap <silent> ]q :cnext<CR>
nnoremap <silent> [q :cprev<CR>
nnoremap <silent> <Leader>qo :copen<CR>
nnoremap <silent> <Leader>qc :cclose<CR>

nnoremap <silent> ]l :lnext<CR>
nnoremap <silent> [l :lprev<CR>
nnoremap <silent> <Leader>lo :lopen<CR>
nnoremap <silent> <Leader>lc :lclose<CR>

" Move lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Resize Splits
nnoremap <Leader>- :resize -10<CR>
nnoremap <Leader>= :resize +10<CR>
nnoremap <Leader>] :vertical resize +10<CR>
nnoremap <Leader>[ :vertical resize -10<CR>

" File explorer
nnoremap <C-f> :Explore<CR>

" Preserve visual paste
vnoremap p "_dP

" Navigate buffers
nnoremap <S-l> :bnext<CR>
nnoremap <S-w> :bdelete<CR>
nnoremap <S-h> :bprev<CR>
nnoremap <Leader><Leader> :e#<CR>

" Visual indent (stay in indentation mode)
vnoremap < <gv
vnoremap > >gv
