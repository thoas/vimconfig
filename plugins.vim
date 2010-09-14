" Syntax options for php {{{

" Do not use short tags to find PHP blocks {{{
let php_noShortTags = 1
" }}}

" Highlight SQL inside PHP strings {{{
let php_sql_query=1
" }}}

let php_special_functions = 0
" }}}

if has("autocmd")
    au Filetype html,xml,xsl,rhtml,htmldjango,php source $HOME/.vim/scripts/closetag.vim
endif
"
" Navigate into window with standard hjkl
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne=1

let g:debuggerMiniBufExpl = 1

let python_highlight_all = 1
let python_highlight_space_errors = 0

let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.egg-info$', '\.egg-link', '\.egg']
