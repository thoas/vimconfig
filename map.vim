let g:mapleader = ","
let mapleader=','

" Open a file with the current directory of the current file which is editing {{{
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>
" }}}

" Remove support for regular arrow key {{{
"nnoremap <Up> <Esc>
"vnoremap <Up> <NOP>
"inoremap <Up> <NOP>
"nnoremap <Down> <Esc>
"vnoremap <Down> <NOP>
"inoremap <Down> <NOP>
"nnoremap <Left> <Esc>
"vnoremap <Left> <NOP>
"inoremap <Left> <NOP>
"nnoremap <Right> <Esc>
"vnoremap <Right> <NOP>
"inoremap <Right> <NOP>
" }}}

noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-K> <C-W>k
noremap <C-J> <C-W>j

" Easy escape {{{
inoremap kj <Esc>
" }}}

inoremap <Nul> <C-x><C-o>

" In normal mode, basic save {{{
nmap <c-s> :w<CR>
" }}}

" In interactive mode, basic save and retrieve cursor position {{{
imap <c-s> <Esc>:w<CR>a
" }}}

" Easy navigation, PAGE-DOWN and PAGE-UP {{{
map <A-DOWN> gj
map <A-UP> gk
imap <A-UP> <ESC>gki
imap <A-DOWN> <ESC>gkj
" }}}

" PAGE-DOWN with space key {{{
nmap <Space> <PageDown>
" }}}

nnoremap <silent> <C-Q> :quit<CR>

" Insert current date {{{
imap \date  <C-R>=strftime("%d/%m/%Y")<CR>
"}}}

" TextMate's key mapping {{{
nmap <D-[> <<
nmap <M-D-5> <<
nmap <D-]> >>
nmap <M-D-°> >>
vmap <D-[> <gv
nmap <M-D-5> >gv
vmap <D-]> >gv
nmap <M-D-°> >gv
nmap <C-S-D> :dd<CR>
" }}}

" Indentation as Eclipse does {{{
vnoremap <S-Tab> <gv
nnoremap <S-Tab> mzV<`zh
" }}}

" Shortcut to rapidly toggle `set list` {{{
nmap <leader>l :set list!<CR>
" }}}

"Sign define mark text=!> texthl=Mark {{{
"map <F7> :exe 'sign place 001 name=mark line='.line(".").' buffer='.winbufnr(0)<CR>
"map <C-F7> :sign unplace<CR>
"}}}

" Duplicate the line {{{
noremap <C-S-d> m'yyP`'k
vnoremap <C-S-d> m'y'>p`'
" }}}

" C-TAB and C-SHIFT-TAB cycle tabs forward and backward
nmap <c-tab> :tabnext<cr>
imap <c-tab> <c-o>:tabnext<cr>
vmap <c-tab> <c-o>:tabnext<cr>
nmap <c-s-tab> :tabprevious<cr>
imap <c-s-tab> <c-o>:tabprevious<cr>
vmap <c-s-tab> <c-o>:tabprevious<cr>

" Easy lines navigation when wrapped {{{
noremap <silent> <D-j> gj
noremap <silent> <D-k> gk
" }}}

" Easy line moving {{{
noremap <C-Up> ddkkp
noremap <C-Down> ddp
" }}}

" Duplicate line {{{
noremap <D-d> m'yyP`'k
vnoremap <D-d> m'y'>p`'
" }}}

" Reload the current file {{{
noremap <D-r> :e<CR>
" }}}

" Navigate into tabs with  {{{
map <D-A-Left> gT
map <D-A-Right> gt
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>
" }}}

" Easy navigation with  when a line is wrapped {{{
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^
" }}}

" Exit vim without saving any changes {{{
map <leader>q :q!<CR>
" }}}

" Reload the current file {{{
noremap <D-r> :e<CR>
" }}}

" Exit vim saving changes {{{
map <leader>w :x<CR>
" }}}

" Delete the current buffer with  + T {{{
noremap <D-w> :bdelete<CR>
" }}}

" Navigate into buffers with CTRL-LEFT and CTRL-RIGHT {{{
noremap <C-left> :bprev<CR>
noremap <C-right> :bnext<CR>
" }}}

" Strip HTML tags in selected line {{{
vnoremap <Leader>h :s/<\/*\([a-z][a-z0-9]*\)[^>]*>//g<CR><Esc>:silent noh<Bar>echo<CR>
" }}}

" Django utilities {{{
nnoremap <Leader>x :%s/{{\([A-Za-z0-9\.\|]*\)}}/{{ \1 }}/g<CR>" Replace {{var}} with {{ var }}
" }}}

" source $MYVIMRC reloads the saved $MYVIMRC
nmap <Leader>s :source $MYVIMRC

" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
nmap <Leader>v :e $MYVIMRC

" Remove trailing whitespaces
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" Simple indentation {{{
vnoremap < <gv
vnoremap > >gv|
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
nnoremap <Tab> mzV>`zl
nnoremap <S-Tab> mzV<`zh
" }}}

" Always go to the mark’s line and column {{{
noremap ' `
vnoremap ' `
noremap g' g`
vnoremap g' g`
" }}}

" Remap Enter and Backspace {{{
vnoremap <BS> dk$
" }}}

nnoremap <leader><space> :nohlsearch<cr>

" Tmux-like split panes navigation {{{
noremap <C-A>% :vsplit<CR><C-W>l
noremap <C-A>s :split<CR><C-W>j
noremap <C-A>h <C-W>h
noremap <C-A>l <C-W>l
noremap <C-A>k <C-W>k
noremap <C-A>j <C-W>j
" }}}

nnoremap _dt :set ft=htmldjango<CR>
nnoremap _dh :set ft=html<CR>
nnoremap _pd :set ft=python.django<CR>

" Map Command-# to switch tabs
map  <D-0> 0gt
imap <D-0> <Esc>0gt
map  <D-1> 1gt
imap <D-1> <Esc>1gt
map  <D-2> 2gt
imap <D-2> <Esc>2gt
map  <D-3> 3gt
imap <D-3> <Esc>3gt
map  <D-4> 4gt
imap <D-4> <Esc>4gt
map  <D-5> 5gt
imap <D-5> <Esc>5gt
map  <D-6> 6gt
imap <D-6> <Esc>6gt
map  <D-7> 7gt
imap <D-7> <Esc>7gt
map  <D-8> 8gt
imap <D-8> <Esc>8gt
map  <D-9> 9gt
imap <D-9> <Esc>9gt

" Underline the current line with '='
nmap <silent> <leader>ul :t.\|s/./=/g\|:nohls<cr>
