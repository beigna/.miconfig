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

" ... hasta acá

call vundle#end()            " required
filetype plugin on           " required

" Fin de Vundleo


syntax on

set tabstop=4     " a tab is four spaces
set autoindent    " always set autoindenting on
"set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4

set softtabstop=4
set expandtab " use spaces for tab
set ruler
set hlsearch

filetype on
"filetype plugin on

autocmd BufWritePre * :%s/\s\+$//e
