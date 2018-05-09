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

""""""""""""""""""""Basic Settings""""""""""""""""""""""""""
" No default fold
set foldlevel=99


""""""""""""""""""""""Color Settings""""""""""""""""""""""""
" Highlight current line
set cursorline
highlight  CursorLine ctermbg=16 ctermfg=None cterm=bold
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

" Auto complete pairs
Bundle 'jiangmiao/auto-pairs'

" Indent Line
Bundle 'Yggdroot/indentLine'
let g:indentLine_char='┆'
let g:indentLine_enabled=1

Bundle 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Bundle 'mgedmin/pythonhelper.vim'
Bundle 'tpope/vim-fugitive'
let g:airline_symbols_ascii = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_section_c = '%{TagInStatusLine()}-%f'
set laststatus=2
set t_Co=256
set encoding=utf-8
let g:airline#extensions#default#section_truncate_width = {
    \ 'a': 140,
    \ 'b': 130,
    \ 'x': 100,
    \ 'y': 100,
    \ 'z': 80,
    \ 'warning': 80,
    \ 'error': 80,
    \ }

Bundle 'scrooloose/nerdcommenter'
Bundle 'Rykka/riv.vim'
Bundle 'vim-syntastic/syntastic'
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <F7> :SyntasticCheck<CR>
nnoremap <F8> :SyntasticReset<CR>

Bundle 'Vimjas/vim-python-pep8-indent'
Bundle "lepture/vim-jinja"

""""""""""""""""""""""Auto Completion"""""""""""""""""""""""
source $OHMYVIM/vimrc/autocomplete.vim

""""""""""""""""""""""User Local Settings"""""""""""""""""""

" Add your own settings here

" Highlight whitespace in line end
autocmd Filetype python match Error /\s\+$/

"""""""""""""""""""""""End Local Settings"""""""""""""""""""

""""""""""""""""""""After Plugin Settings"""""""""""""""""""
call vundle#end()
filetype plugin indent on
