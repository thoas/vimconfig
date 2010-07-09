let mapleader=','
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Remove support for regular arrow key
nnoremap <Up> <Esc>
vnoremap <Up> <NOP>
inoremap <Up> <NOP>
nnoremap <Down> <Esc>
vnoremap <Down> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <Esc>
vnoremap <Left> <NOP>
inoremap <Left> <NOP>
nnoremap <Right> <Esc>
vnoremap <Right> <NOP>
inoremap <Right> <NOP>

nnoremap <silent> <C-N> :noh<CR>
inoremap <Nul> <C-x><C-o>

noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-K> <C-W>k
noremap <C-J> <C-W>j

nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
map <A-DOWN> gj
map <A-UP> gk
imap <A-UP> <ESC>gki
imap <A-DOWN> <ESC>gkj

nnoremap <silent> <F9> :NERDTree<CR>
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <C-Q> :quit<CR>

map <tab> gt
imap \date  <C-R>=strftime("%d/%m/%Y")<CR>

nnoremap <silent> <C-S> :call <SID>StripTrailingWhitespaces()<CR>

" TextMate's key mapping
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
"sign define mark text=!> texthl=Mark
map <F7> :exe 'sign place 001 name=mark line='.line(".").' buffer='.winbufnr(0)<CR>
map <C-F7> :sign unplace<CR>

" Duplicate the line
noremap <D-d> m'yyP`'k
vnoremap <D-d> m'y'>p`'

" C-TAB and C-SHIFT-TAB cycle tabs forward and backward
nmap <c-tab> :tabnext<cr>
imap <c-tab> <c-o>:tabnext<cr>
vmap <c-tab> <c-o>:tabnext<cr>
nmap <c-s-tab> :tabprevious<cr>
imap <c-s-tab> <c-o>:tabprevious<cr>
vmap <c-s-tab> <c-o>:tabprevious<cr>

" For mac users (using the 'apple' key)
map <D-S-]> gt
map <D-S-[> gT
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