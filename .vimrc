set nocompatible
filetype off

" Vundle {{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'        "The cool info bar above the command line at the bottom of vim
Plugin 'vim-airline/vim-airline-themes' "The themes for the above script

Plugin 'junegunn/rainbow_parentheses.vim'

Plugin 'junegunn/goyo.vim'

call vundle#end()
filetype plugin indent on
" }}}

" Basic Settings {{{
set noshowmode
set laststatus=2                        "Show the airline bar always
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set copyindent
set smartindent
set showmatch
set number
set wildmenu
set scrolloff=5
set cursorline
" }}}

" Aesthetic Changes {{{
syntax enable
colorscheme nord
let g:airline_theme='bubblegum'            "Set the theme for airline
" }}}

" Mappings {{{
nnoremap ; :
nmap <jk> :TagbarToggle<CR>

let mapleader = ","
" Edit vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>
" Source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

iabbrev adn and
iabbrev ha Harry Arakkal
iabbrev a2 arakkal2

nnoremap H ^
nnoremap L $
inoremap jk <esc>
vnoremap jk <esc>
" }}}

" Python {{{
"Comment with leader c
augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END
" }}}

"Save noncoding files when exiting insert
augroup insert_leave
    autocmd InsertLeave *.md :w
augroup END


" Java {{{
augroup filetype_java
    "Create print function with keyword print
    autocmd FileType java :iabbrev <buffer> print System.out.println();<left><left>
augroup END
" }}}

augroup filetype_c
    autocmd FileType c, cpp RainbowParentheses
augroup END

" Vimscript file settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Functions{{{
" }}}

" temp {{{
" }}}
