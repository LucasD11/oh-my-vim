" File: plugin/undotree.vim 
" Description: OhMyVIM undotree plugin
" Author: Lucas Dai <yuanzhendai@gmail.com>
" License: MIT
 
"======================== Prepare ==========================
" Avoid installing twice
if exists('g:omv_undotree_loaded')
    finish
endif
let g:omv_undotree_loaded=0

" Check User Configure
if !exists('g:omv_undotree')
    let g:omv_undotree=1
endif
if g:omv_undotree==0
    finish
endif

" Check vim version 
if v:version <= 703
    echo "OhMyVimError: VIM version > 7.3 is required."
    finish
endif

" Check python
if !has('python') && !has('python3')
    echo "OhMyVimError: No python support in VIM"
    finish
endif

" Signal plugin availability with a value of 1.
let g:omv_undotree_loaded = 1   

"========================= Plugin ==========================
function! s:ShowUndoTree()
    echo "TODO Show"
endfunction

function! s:HideUndoTree()
    echo "TODO Hide"
endfunction

function! s:UndoTree()
    if !exists('g:omv_undotree_show')
        let g:omv_undotree_show=0
    endif
    if g:omv_undotree_show==1
        call s:HideUndoTree()
        let g:omv_undotree_show=0
    else
        call s:ShowUndoTree()
        let g:omv_undotree_show=1
    endif
endfunction

"===================== Bind Trigger ========================
command! -n=0 -bar UndoTree :call s:UndoTree()
if exists('g:omv_undotree_trigger')
    exec "nnoremap " . g:omv_undotree_trigger . " :UndoTree<CR>"
endif
