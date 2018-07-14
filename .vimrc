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

Plugin 'vim-syntastic/syntastic'
Plugin 'aklt/plantuml-syntax'
Plugin 'fatih/vim-go'
Plugin 'tmhedberg/SimpylFold'

" ... hasta acá

call vundle#end()            " required
filetype plugin on           " required

" Fin de Vundleo

syntax on

set foldmethod=indent
set foldlevel=99
nnoremap <space> za

set ruler
set hlsearch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

au BufNewFile,BufRead *.py
    \ set cc=80

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


filetype on
"filetype plugin on

autocmd BufWritePre * :%s/\s\+$//e
