" This file contains the configuration for plugins, the actual plugins are installed in dependencies.vim

" Airline
let g:airline_powerline_fonts = 1

" Vim Rooter
let g:rooter_patterns = ['>Projects']

" Lightline
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat'
      \ },
      \ }

" FZF
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
      \ 'spinner': ['cfg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

" Startify
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

" Add vim dev icons to vim startify
function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

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
