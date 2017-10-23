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
call vundle#begin('~/.oh-my-vim/bundle')
Plugin 'VundleVim/Vundle.vim'

"""""""""""""""""""""User Defined Plugins"""""""""""""""""""
" Finder inside VIM
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<F3>'

" UndoTree
Bundle 'sjl/gundo.vim'
nnoremap <F4> :GundoToggle<CR>

" Auto complete pairs
Bundle 'jiangmiao/auto-pairs'

" Ultisnips & YCM for completion
Bundle 'ervandew/supertab'
Bundle 'Valloric/YouCompleteMe'
let g:ycm_python_binary_path = 'python'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_key_invoke_completion = ''
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_server_python_interpreter = 'python'

Bundle 'SirVer/ultisnips'
let g:UltiSnipsSnippetDirectories=["lightpets"]

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<s-tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" ............end Ultisnips & YCM

Plugin 'Yggdroot/indentLine'
"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1

Bundle 'Lokaltog/vim-powerline'
set laststatus=2
set t_Co=256
let g:Powerline_symbols= 'unicode'
set encoding=utf8

Bundle 'scrooloose/nerdcommenter'
Bundle 'ShowPairs'
Bundle 'EasyGrep'
Bundle 'Rykka/riv.vim'
Bundle 'vim-syntastic/syntastic'
Bundle 'Vimjas/vim-python-pep8-indent'
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <F7> :SyntasticCheck<CR>
nnoremap <F8> :SyntasticReset<CR>

""""""""""""""""""""After Plugin Settings"""""""""""""""""""
call vundle#end()
filetype plugin indent on
