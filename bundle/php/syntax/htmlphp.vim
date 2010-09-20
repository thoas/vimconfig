" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'htmlphp'
endif

if version < 600
  so <sfile>:p:h/php.vim
else
  runtime! syntax/php.vim
  unlet b:current_syntax
endif