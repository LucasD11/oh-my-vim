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
source $OHMYVIM/vimrc/basic.vim


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
call vundle#begin('~/.oh-my-vim/bundle')
Plugin 'VundleVim/Vundle.vim'

"""""""""""""""""""""User Defined Plugins"""""""""""""""""""
" File finder inside VIM
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<F3>'

" UndoTree
Bundle 'sjl/gundo.vim'
nnoremap <F4> :GundoToggle<CR>
let g:gundo_right=1

" Auto complete pairs
Bundle 'jiangmiao/auto-pairs'

" Indent Line
Bundle 'Yggdroot/indentLine'
let g:indentLine_char='┆'
let g:indentLine_enabled=1

Bundle 'Lokaltog/vim-powerline'
set laststatus=2
set t_Co=256
let g:Powerline_symbols= 'unicode'
set encoding=utf8

Bundle 'scrooloose/nerdcommenter'
Bundle 'Rykka/riv.vim'
Bundle 'vim-syntastic/syntastic'
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <F7> :SyntasticCheck<CR>
nnoremap <F8> :SyntasticReset<CR>

Bundle 'Vimjas/vim-python-pep8-indent'

""""""""""""""""""""""Auto Completion"""""""""""""""""""""""
source $OHMYVIM/vimrc/autocomplete.vim

""""""""""""""""""""After Plugin Settings"""""""""""""""""""
call vundle#end()
filetype plugin indent on
