
" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'

" }}}

set nocompatible
filetype on
filetype plugin on
filetype indent on

syntax on
set number
set tabstop=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest

set encoding=utf-8
set t_Co=256                                
set ttyfast                                 

set background=dark
colorscheme gruvbox
set shell=/bin/bash
