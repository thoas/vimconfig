" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on
  filetype indent on
  filetype plugin on
 
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal               ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal               ts=2 sts=2 sw=2 expandtab
 
  " Customisations based on house-style (arbitrary)
  autocmd FileType html                        setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css                         setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript                  setlocal ts=4 sts=4 sw=4 noexpandtab
 
  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss             setfiletype xml
  
  autocmd FileType text                        setlocal textwidth=72
  autocmd FileType todo                        setlocal textwidth=72
  autocmd FileType python                      setlocal textwidth=80
  autocmd FileType php                         setlocal textwidth=120
  
  autocmd BufEnter *.txt                       set spell
  autocmd BufEnter *.txt                       set spelllang=fr
  
  au filetype html                                set omnifunc=htmlcomplete#CompleteTags
  au filetype css                                 set omnifunc=csscomplete#CompleteCSS
  au filetype javascript                          set omnifunc=javascriptcomplete#CompleteJS
  au filetype c                                   set omnifunc=ccomplete#Complete
  au filetype php                                 set omnifunc=phpcomplete#CompletePHP
  au filetype ruby                                set omnifunc=rubycomplete#Complete
  au filetype sql                                 set omnifunc=sqlcomplete#Complete
  au filetype python                              set omnifunc=pythoncomplete#Complete
  au filetype xml                                 set omnifunc=xmlcomplete#CompleteTags
  autocmd FileType python                         set omnifunc=pythoncomplete#Complete

  au! BufRead,BufNewFile *.py                     setfiletype python
  au! BufRead,BufNewFile *.php                    setfiletype php
  au! BufRead,BufNewFile *.tpl.html               setfiletype php
  au! BufRead,BufNewFile *.phtml                  setfiletype php

  augroup markdown
      au! BufRead,BufNewFile *.mkd                setfiletype mkd
      au! BufRead,BufNewFile *.md                 setfiletype mkd
      au! BufRead,BufNewFile *.markdown           setfiletype mkd
  augroup END

  au! BufRead,BufNewFile *.conf                   setfiletype apache
  au! BufRead,BufNewFile *.as                     setfiletype javascript
  au! BufRead,BufNewFile *.js                     setfiletype javascript.jquery

  autocmd BufEnter *.txt                          set filetype=text
  autocmd BufEnter *.todo                         set filetype=todo
endif