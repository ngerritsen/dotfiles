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

" Quick edit and source vimrc
nnoremap <silent> <Leader>, :e $MYVIMRC<CR>
nnoremap <silent> <Leader>,e :e $MYVIMRC<CR>
nnoremap <silent> <Leader>,s :source $MYVIMRC<CR>

" Quickfix lists
nnoremap <silent> <C-j> :cnext<CR>
nnoremap <silent> <C-k> :cprev<CR>

" Splits
nnoremap <Leader>- :resize -10<CR>
nnoremap <Leader>= :resize +10<CR>
nnoremap <Leader>] :vertical resize +10<CR>
nnoremap <Leader>[ :vertical resize -10<CR>

" CamelcaseMotion
let g:camelcasemotion_key = '<leader>'

" Previous file
nnoremap <silent> <C-e><C-e> <C-^>

" No newbie keys allowed
for key in ['<Up>', '<Down>', '<Left>', '<Right>']
  exec 'noremap' key '<Nop>'
  exec 'inoremap' key '<Nop>'
endfor
