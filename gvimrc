set cursorline

" Transparence
set transp=20
set transp=10
set transp=5
"set transp=2

set guifont=Monaco:h11

set fuoptions=maxvert,maxhorz

set guioptions-=L
set guioptions-=l
set guioptions+=R
set guioptions-=r 
set guioptions-=T

macmenu File.Close key=<nop>
macmenu File.New\ Tab key=<nop>
noremap <D-w> :bdelete<CR>
noremap <D-t> :CommandT<CR>
set showtabline=1