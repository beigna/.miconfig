"
" Instalar Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"

" Requerido por Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugines de acá ...

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'aklt/plantuml-syntax'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'

" ... hasta acá

call vundle#end()            " required
filetype plugin on           " required

" Fin de Vundleo
colorscheme desert

syntax on

filetype on
"filetype plugin on

set hidden

set foldmethod=indent
set foldlevel=99
nnoremap <space> za

noremap <F9> :bprevious<CR>
noremap <F10> :bnext<CR>

noremap <F3> :NERDTreeToggle<CR>

set ruler
set hlsearch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

au BufNewFile,BufRead *.py
    \ setlocal cc=80

au BufNewFile,BufRead *.js,*.html,*.css,*.json,*.yaml
    \ setlocal tabstop=2 softtabstop=2 shiftwidth=2

au BufNewFile,BufRead Makefile
    \ setlocal noexpandtab

autocmd BufWritePre * :%s/\s\+$//e

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
