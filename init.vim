set nocompatible              " required
filetype off                  " required
set hidden
set showtabline=0

" set the runtime path to include Vundle and initialize
call plug#begin()

Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rust-lang/rust.vim'
Plug 'psf/black'
Plug 'fisadev/vim-isort'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()                           " required


set encoding=utf-8
set t_Co=256                                " 256 colors
set guifont=mononoki\ Nerd\ Font\ 18
colorscheme gruvbox                    " set vim colorscheme
let g:airline_theme='base16'                " set airline theme
syntax enable                               " enable syntax highlighting
set background=dark
set pyxversion=0
let g:loaded_python_provider = 1
set shell=/bin/bash
set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration
let g:airline#extensions#tabline#enabled = 1
" autocmd BufWritePre *.py execute ':Black'  


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

