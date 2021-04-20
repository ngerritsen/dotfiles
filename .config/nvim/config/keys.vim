let mapleader = "\<space>"

" Better Escape
inoremap <silent> jj <Esc>
cnoremap <silent> jj <Esc>
vnoremap <silent> jj <Esc>

" Git Fugitive
nmap <Leader>gs :G<CR>
nmap <Leader>gf :diffget //2<CR>
nmap <Leader>gj :diffget //3<CR>

nmap <Leader>tf :TestFile<CR>
nmap <Leader>tl :TestLast<CR>
nmap <Leader>tn :TestNearest<CR>
nmap <Leader>ts :TestSuite<CR>
nmap <Leader>to :TestVisit<CR>

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

" No newbie keys allowed
for key in ['<Up>', '<Down>', '<Left>', '<Right>']
  exec 'noremap' key '<Nop>'
  exec 'inoremap' key '<Nop>'
endfor

" Fz
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <Leader><C-p> :Files<CR>
nnoremap <silent> <C-s> :Rg<CR>
nnoremap <silent> <C-e> :History<CR>

" Easymotion
map <Leader> <Plug>(easymotion-prefix)

" NERDTree
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :NERDTreeFind<CR>

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
