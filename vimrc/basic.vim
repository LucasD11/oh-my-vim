"=================================================
" File: vimrc/basic.vimrc 
" Description: Basic settings for oh my vim
" Author: Lucas Dai <yuanzhendai@gmail.com>
" License: MIT


""""""""""" Default settings for almost all people""""""""""
" Set File Type Plugin On
filetype plugin on
filetype plugin indent on

" Everyone loves smartindent
set smartindent

" Using mouse
set mouse=a

" Using Vim mode instead of default Vi mode
set nocp

" Backspace can delete anything
set backspace=2

" Sets how many lines of history VIM has to remember
set history=500

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.swp
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

" When reopen a file, jump to the line next time we close at
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif  

" Show number in front of every line
set number

" <TAB> use 4 space instead of \t  
set expandtab
set shiftwidth=4
set softtabstop=4

""""""""""""""""""""""Color Settings""""""""""""""""""""""""
" Syntax
syntax on

" Highlight searching content when you typing
set hlsearch incsearch
noremap <silent><Space> :noh<CR>l
