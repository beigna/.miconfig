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
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

" ... hasta acá

call vundle#end()            " required
filetype plugin on           " required

" Fin de Vundleo

syntax on

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
    \ set cc=80

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


filetype on
"filetype plugin on

autocmd BufWritePre * :%s/\s\+$//e

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
