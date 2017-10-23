""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""Oh My Vim""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""Author: Lucas Dai"""""""""""""""""""""""""""""""""""""""
""""Email: yuanzhendai@gmail.com""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""Your Oh My Vim Directory""""""""""""""""""""""
if !exists('$OHMYVIM')
    let $OHMYVIM=$HOME . '/.oh-my-vim'
endif
let &runtimepath="~/.oh-my-vim,".expand(&runtimepath)
source $OHMYVIM/vimrc/basic.vimrc


""""""""""""""""""Oh My VIM Settings""""""""""""""""""""""""
" Use "," as default leader key
let mapleader=","
let g:mapleader=","
" Code Compile & Run
let g:omv_run_trigger="<F5>"
" Use Undo Tree
let g:omv_undotree=1
let g:omv_undotree_trigger="<leader>h"

""""""""""""""""""""Basic Settings""""""""""""""""""""""""""
" No default fold
set foldlevel=99

" Show number in front of every line
set number

" <TAB> use 4 space instead of \t  
set expandtab
set shiftwidth=4
set softtabstop=4

""""""""""""""""""""""Color Settings""""""""""""""""""""""""
" Highlight current line
set cursorline
highlight  CursorLine ctermbg=17 ctermfg=None cterm=bold
" Highlight searching content when you typing
set hlsearch incsearch

""""""""""""""""""""""Prepare Plugin""""""""""""""""""""""""
" Vundle required settings
filetype off
set rtp+=~/.oh-my-vim/bundle/Vundle.vim
call vundle#begin('~/.oh-my-vim/bundle/Vundle.vim')
Plugin 'VundleVim/Vundle.vim'

"""""""""""""""""User Defined Plugins"""""""""""""""""""""""

""""""""""""""""""""After Plugin Settings"""""""""""""""""""
call vundle#end()
filetype plugin indent on
