let g:ale_disable_lsp = 1

" Plugins
call plug#begin('~/.vim/plugged')
" Editor
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-system-copy'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi'

" UI
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Themes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'

" Programming
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'gko/vim-coloresque'
Plug 'stsewd/fzf-checkout.vim'

call plug#end()

" General
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set hidden

set nowrap
set number
set relativenumber
set colorcolumn=80
set laststatus=2
set nohlsearch
set signcolumn=yes
set cursorline

set termguicolors

set t_Co=256

let g:airline_powerline_fonts = 1
let g:nord_cursor_line_number_background = 1
let g:gruvbox_contrast_dark='medium'
let g:airline_theme='nord'
let g:lightline = { 'colorscheme': 'nord' }
let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Comment'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

colorscheme nord

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Better Escape
inoremap <silent> jj <Esc>
cnoremap <silent> jj <Esc>
vnoremap <silent> jj <Esc>

" Splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> <Leader>l :vertical resize +5<CR>
nnoremap <silent> <Leader>h :vertical resize -5<CR>
nnoremap <silent> <Leader>k :resize +5<CR>
nnoremap <silent> <Leader>j :resize -5<CR>

set splitbelow
set splitright
set wmh=0

let mapleader = "\<space>"
let g:camelcasemotion_key = '<leader>'

" No newbie keys allowed
for key in ['<Up>', '<Down>', '<Left>', '<Right>']
  exec 'noremap' key '<Nop>'
  exec 'inoremap' key '<Nop>'
  exec 'cnoremap' key '<Nop>'
endfor

" Ale
let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'javascript': ['prettier', 'eslint'],
      \   'typescript': ['prettier', 'eslint'],
      \   'typescriptreact': ['prettier', 'eslint'],
      \   'json': ['prettier'],
      \   'html': ['prettier'],
      \   'php':  ['php_cs_fixer']
      \}

" Fzf
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <Leader><C-p> :Files<CR>
nnoremap <silent> <C-s> :Ag<CR>
nnoremap <silent> <C-e> :History<CR>

" Easymotion
map <Leader> <Plug>(easymotion-prefix)

" CoC
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <Leader>gd <Plug>(coc-definition)
nmap <Leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <Leader>gr <Plug>(coc-references)
nmap <Leader>rn <Plug>(coc-rename)

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :NERDTreeFind<CR>
