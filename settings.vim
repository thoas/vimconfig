syntax on
colorscheme ir_black

set t_Co=256

" set cursorline
" hi CursorLine guibg=#4d4d4d

set encoding=utf-8
set fileencoding=utf-8
set nocompatible
set splitright

set iskeyword+=_,$,@,%,#
set background=dark
set guifont=Monaco:h11
set number
set autoindent
set smartindent
set laststatus=2

set backspace=indent,eol,start
set history=50
set ruler
set showcmd
set ts=4 sts=4 shiftwidth=4 expandtab
set showtabline=2
set showmatch
set viewdir=~/.vim/saveview/
set fileformats=unix,mac,dos
set foldcolumn=2

" to write swap file to disk after 50 keystrokes
set updatecount=50

set incsearch
set hlsearch

set guitablabel=%{ShortTabLabel()}
set tabline=%!ShortTabLine()
set foldtext=MyFoldFunction()

set list
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

set dictionary+=/usr/share/dict/french
set spellsuggest=5
set langmenu=en_US.UTF-8

" Statusline
set statusline=%3*[%1*%{GetName()}%3*]%3*
set statusline+=%7*%{&modified?'\ (modified)':'\ '}%3*
set statusline+=%5*%{IsHelp()}%3*
set statusline+=%6*%{&readonly?'\ (read-only)\ ':'\ '}%3*
set statusline+=%3*fenc:%4*%{strlen(&fenc)?&fenc:'none'}%*\ \ 
set statusline+=%3*ff:%4*%{&ff}%*\ \ 
set statusline+=%3*ft:%4*%{strlen(&ft)?&ft:'<none>'}\ \ 
set statusline+=%3*tab:%4*%{&ts}
set statusline+=%3*,%4*%{&sts}
set statusline+=%3*,%4*%{&sw}
set statusline+=%3*,%4*%{&et?'et':'noet'}\ \ 
set statusline+=%<%3*pwd:%4*%{getcwd()}\ \ 
set statusline+=%=
set statusline+=%3*col:%4*%c\ \ 
set statusline+=%3*line:%4*%l\ \ 
set statusline+=%3*total:%4*%L\ 

" Ignore certain types of files on completion
set wildignore+=*.o,*.obj,*.pyc,.git,.svn

" Fix my <Backspace> key (in Mac OS X Terminal)
set t_kb=fixdel

"
" Syntax options for php
"

" Do not use short tags to find PHP blocks
let php_noShortTags = 1

" Highlighti SQL inside PHP strings
let php_sql_query=1
