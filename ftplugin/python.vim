"=================================================
" File: ftplugin/python.vim 
" Description: Python Compiler
" Author: Lucas Dai <yuanzhendai@gmail.com>
" License: BSD
" 

" Avoiding Install more than once
if exists('g:omv_run_loaded')
    finish
endif

let g:omv_run_loaded=0

"=================== Auto Run ====================
" Just run python file, as it needn't compile
function! s:CompileRunPython()
    write
    exec "!clear & time python2.7 %"
endfunc

" Bind Trigger
command! -n=0 -bar Run :call s:CompileRunPython()
if exists('g:omv_run_trigger')
    exec "nnoremap " . g:omv_run_trigger . " :Run<CR>"
endif

"==============virtualenv support==================
python << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

"==================================================
let g:omv_run_loaded=1
