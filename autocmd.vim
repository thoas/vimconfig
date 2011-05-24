" Disable stupid html rendering
fun! s:SelectHTML()
    let n = 1
    while n < 50 && n < line("$")
        " check for django
        if getline(n) =~ '{%\s*\(extends\|load\|block\|if\|for\|include\|trans\)\>'
            set ft=htmldjango
            return
        endif
        let n = n + 1
    endwhile
    " go with html
    set ft=htmlphp
endfun

" Only do this part when compiled with support for autocommands {{{
if has("autocmd")
    " Enable file type detection
    filetype on
    filetype indent on
    filetype plugin on

    " Syntax of these languages is fussy over tabs Vs spaces
    autocmd FileType make setlocal                      ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal                      ts=4 sts=4 sw=4 expandtab

    " Customisations based on house-style (arbitrary    )
    autocmd FileType html                               setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType css                                setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType sass                               setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript                         setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType python                             compiler pylint

    " Treat .rss files as XML
    autocmd BufNewFile,BufRead *.rss                    setfiletype xml

    au filetype html                                    set omnifunc=htmlcomplete#CompleteTags
    au filetype css                                     set omnifunc=csscomplete#CompleteCSS
    au filetype javascript                              set omnifunc=javascriptcomplete#CompleteJS
    au filetype c                                       set omnifunc=ccomplete#Complete
    au filetype php                                     set omnifunc=phpcomplete#CompletePHP
    au filetype ruby                                    set omnifunc=rubycomplete#Complete
    au filetype sql                                     set omnifunc=sqlcomplete#Complete
    au filetype python                                  set omnifunc=pythoncomplete#Complete
    au filetype xml                                     set omnifunc=xmlcomplete#CompleteTags
    autocmd FileType python                             set omnifunc=pythoncomplete#Complete colorcolumn=80

    au! BufRead,BufNewFile *.py                         setfiletype django
    au! BufRead,BufNewFile *.php                        setfiletype php
    au! BufRead,BufNewFile *.phps                       setfiletype php
    au! BufRead,BufNewFile *.php.html                   setfiletype htmlphp
    au! BufRead,BufNewFile *.tpl.html,*.tpl             setfiletype htmlphp
    au! BufRead,BufNewFile *.phtml                      setfiletype htmlphp
    au! BufNewFile,BufRead *.html,*.htm                 call s:SelectHTML()

    augroup markdown
        au! BufRead,BufNewFile *.mkd                    setfiletype mkd
        au! BufRead,BufNewFile *.md                     setfiletype mkd
        au! BufRead,BufNewFile *.mdown                  setfiletype mkd
        au! BufRead,BufNewFile *.markdown               setfiletype mkd
    augroup END

    au! BufRead,BufNewFile *.conf                       setfiletype apache
    au! BufRead,BufNewFile *.as                         setfiletype javascript
    au! BufRead,BufNewFile *.js                         setfiletype javascript.jquery

    autocmd BufEnter *.txt                              set filetype=text
    autocmd BufEnter *.todo                             set filetype=todo
endif
" }}}
