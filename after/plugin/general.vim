" Customize taglist settings
if exists('loaded_taglist')
    let Tlist_Exit_OnlyWindow = 1
    let Tlist_Inc_Winwidth = 1
    let Tlist_Max_Submenu_Items = 15
    let tlist_php_settings = 'php;c:class;d:constant;f:function'
    let Tlist_Ctags_Cmd="/opt/local/bin/ctags"
    let Tlist_Auto_Open=0
    let Tlist_Use_Right_Window=1
    let Tlist_Sort_Type="name"
    let Tlist_Show_One_File=1
    let Tlist_Process_File_Always = 1
    
    noremap <leader>t :TlistToggle<CR>
    noremap <D-S-T> :TlistToggle<CR>
    nnoremap <silent> <F8> :TlistToggle<CR>
endif

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

if exists('loaded_supertab')
    " Use CTRL-SPACE for omni completion
    let g:SuperTabMappingForward = "<C-Space>"
    imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-p>")<cr>
endif

if exists('loaded_minibufexplorer')
    " Navigate into window with standard hjkl
    let g:miniBufExplMapWindowNavVim = 1 
    let g:miniBufExplMapWindowNavArrows = 1 
    let g:miniBufExplModSelTarget = 1

    map <Leader>b :TMiniBufExplorer<cr>
endif

if exists('g:autoclose_loaded')
    nmap <leader>x <Plug>ToggleAutoCloseMappings
endif

" Set Project options
if exists('loaded_project')
    let g:proj_run1='!php -l %f' 
endif