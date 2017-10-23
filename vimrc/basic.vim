"=================================================
" File: vimrc/basic.vimrc 
" Description: Basic settings for oh my vim
" Author: Lucas Dai <yuanzhendai@gmail.com>
" License: MIT


""""""""""" Default settings for almost all people""""""""""
" Set File Type Plugin On
filetype plugin on
filetype plugin indent on

" Everyone love smartindent
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
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

""""""""""""""""""""""Color Settings""""""""""""""""""""""""
" Syntax
syntax on

" Highlight searching content when you typing
set hlsearch incsearch
"noremap <silent><esc> <esc>:noh<CR><esc>
