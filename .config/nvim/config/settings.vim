" General
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set hidden
set nowrap
set nohlsearch

" Interface
set number
set relativenumber
set colorcolumn=80
set laststatus=2
set signcolumn=yes
set cursorline

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Splits
set splitbelow
set splitright
set wmh=0

let g:startify_custom_header = [
    \'    ___       __                                                            ',
    \'  /'' _ `\   /''_ `\                                                        ',
    \'  /\ \/\ \ /\ \L\ \                 Niels Gerritsen                         ',
    \'  \ \_\ \_\\ \____ \                https://nielsgerritsen.com              ',
    \'   \/_/\/_/ \/___L\ \  _______      https://github.com/ngerritsen/dotfiles  ',
    \'              /\____/ /\______\                                             ',
    \'              \_/__/  \/______/                                             ',
    \'                                                                            ',
    \]

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize=45

" Start NERDTree and Startify when Vim starts without any argument.
autocmd VimEnter *
    \   if !argc()
    \ |   Startify
    \ |   NERDTree
    \ |   wincmd w
    \ | endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0]
    \ | Startify
    \ | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

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
