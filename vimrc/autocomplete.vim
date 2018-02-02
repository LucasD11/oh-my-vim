"=================================================
" File: vimrc/autocomplete.vimrc 
" Description: Auto complete confiure, using plugin neocomplcache
" Author: Lucas Dai <yuanzhendai@gmail.com>
" License: MIT

""""""""""""""""""""""User Local Settings"""""""""""""""""""
Bundle "davidhalter/jedi-vim"
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<tab>"
"let g:jedi#completions_command = "<C-p>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#completions_enabled = 1
let g:jedi#use_splits_not_buffers = "right"

" This is a bug fix to pymode
let g:pymode_folding = 0

"Bundle 'Shougo/neocomplcache'
Bundle 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<C-p>"
Bundle 'jordwalke/VimCompleteLikeAModernEditor'
Bundle 'crazydyz/lightpets'
