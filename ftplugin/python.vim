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
    exec "!clear & time python %"
endfunc

" Bind Trigger
command! -n=0 -bar Run :call s:CompileRunPython()
if exists('g:omv_run_trigger')
    exec "nnoremap " . g:omv_run_trigger . " :Run<CR>"
endif

"==============virtualenv support==================
"if has('python3')
"python3 << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"    project_base_dir = os.environ['VIRTUAL_ENV']
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"    # execfile(activate_this, dict(__file__=activate_this))
"    exec(
"        compile(open(activate_this, "rb").read(), activate_this, 'exec'),
"        dict(__file__=activate_this)
"    )
"EOF
"elseif has('python')
"python << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"    print '123'
"    project_base_dir = os.environ['VIRTUAL_ENV']
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"    execfile(activate_this, dict(__file__=activate_this))
"EOF
"endif

"==================================================
let g:omv_run_loaded=1
