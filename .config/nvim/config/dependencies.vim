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
Plug 'adelarsq/vim-matchit'

" UI
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Themes
Plug 'arcticicestudio/nord-vim'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}

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
Plug 'kburdett/vim-nuuid'

call plug#end()