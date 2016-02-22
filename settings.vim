call pathogen#runtime_append_all_bundles()

if has('gui_running')
    syntax on
    colorscheme ir_black
else
    syntax on
    colorscheme desert
endif

set background=dark

" Override buffer, no save requirement when switching from on to another {{{
set hidden
" }}}

" set t_Co=256

" Set Cursorline {{{
" hi CursorLine guibg=#4d4d4d
" }}}

" Set encoding {{{
set encoding=utf-8
set fileencoding=utf-8
" }}}

set nocompatible
set title
set visualbell
set noerrorbells
set shell=bash
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.DS_Store,*.db


" Always split window in right direction {{{
set splitright
" }}}

" To write swap file to disk after 50 keystrokes {{{
set nobackup
set noswapfile
set updatecount=50
" }}}

set iskeyword+=_,$,@,%,#
set guifont=Monaco:h11
set number
set laststatus=2

set backspace=indent,eol,start
set history=50
set ruler
set showcmd
set ts=4 sts=4 shiftwidth=4 expandtab
set wildmenu
set wildmode=full
set ignorecase

" Automatic and smart indentation {{{
set expandtab
" }}}

set pastetoggle=<F2>
set showtabline=2
set showmatch
set viewdir=~/.vim/saveview/
set fileformats=unix
set foldcolumn=2

set incsearch
set hlsearch

set guitablabel=%{ShortTabLabel()}
set tabline=%!ShortTabLine()
set foldtext=MyFoldFunction()

" Use the same symbols as TextMate for tabstops and EOLs {{{
set list listchars=tab:›\ ,trail:·,eol:¬ " mark trailing white space
" }}}

set dictionary+=/usr/share/dict/french
set spellsuggest=5
set langmenu=en_US.UTF-8

" Persistent undo {{{
" set undofile
" set undodir=$HOME/.undo
" }}}

set colorcolumn=120

set scrolloff=5

" Statusline {{{
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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=
set statusline+=%3*col:%4*%c\ \ 
set statusline+=%3*line:%4*%l\ \ 
set statusline+=%3*total:%4*%L\ \ 
" }}}

" Ignore certain types of files on completion {{{
set wildignore+=*.o,*.obj,*.pyc,.git,.svn
" }}}

" Fix my <Backspace> key (in Mac OS X Terminal) {{{
" set t_kb=fixdel
" }}}

" Maximize GVim window at startup {{{
if has("gui_running")
  set lines=9999 columns=9999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif
" }}}

set completeopt-=preview
