" Set NERDTree options
if exists('loaded_nerd_tree')
    let g:NERDTreeWinPos = "left"
    let NERDTreeWinSize=35

    noremap <leader>n :NERDTreeToggle<CR>
    nnoremap <silent> <F9> :NERDTree<CR>
endif

if exists('loaded_nerd_comments')
    map <D-S-/> <plug>NERDCommenterToggle
endif

if exists('g:autoclose_loaded')
    nmap <leader>x <Plug>ToggleAutoCloseMappings
endif

" Set Project options
if exists('loaded_project')
    let g:proj_run1='!php -l %f'
endif

noremap <leader>t :TagbarToggle<CR>
noremap <D-S-T> :TagbarToggle<CR>
nnoremap <silent> <F8> :TagbarToggle<CR>
