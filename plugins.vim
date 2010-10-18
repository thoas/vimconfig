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
let g:miniBufExplorerMoreThanOne=9999

let g:debuggerMiniBufExpl = 1

let python_highlight_all = 1
let did_django_syn_inits = 1
let python_highlight_space_errors = 0

let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.egg-info$', '\.egg-link']
let NERDTreeChDirMode = 2
let NERDTreeSortOrder = ['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks = 1

" FuzzyFinder {{{
noremap <D-t> :FufFile<CR>
map <Leader>f :FufFile<CR>
map <Leader>b :FufBuffer<CR>
let g:fuf_file_prompt = 'file→ '
let g:fuf_buffer_prompt = 'buffer→ '
let g:fuf_lines_prompt = 'line→ '
let g:fuf_previewHeight = 20
" }}}

" MRU {{{
map <Leader>m :MRU<CR>
let MRU_Window_Height = 15
" }}}

" supertab {{{
let g:SuperTabDefaultCompletionType = '<c-p>'
let g:SuperTabMappingForward = '<c-p>'
" }}}
