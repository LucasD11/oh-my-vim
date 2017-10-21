""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""Oh My Vim""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""Author: Lucas Dai"""""""""""""""""""""""""""""""""""""""
""""Email: yuanzhendai@gmail.com""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""Your Oh My Vim Directory""""""""""""""""""""""
source $OHMYVIM/vimrc/basic.vimrc

"""""""""""""""""""Basic Settings"""""""""""""""""""""""""""
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

"""""""""""""""""""""""""Plugins""""""""""""""""""""""""""""
" Use "," as default leader key
let mapleader=","
let g:mapleader = ","
