nnoremap <buffer> <CR> <C-]>
nnoremap <buffer> <BS> <C-T>
nnoremap <buffer> o /'\l\{2,\}'<CR>
nnoremap <buffer> O ?'\l\{2,\}'<CR>
nnoremap <buffer> s /\|\zs\S\+\ze\|<CR>
nnoremap <buffer> S ?\|\zs\S\+\ze\|<CR>

:nnoremap <S-F1>  :cc<CR>
:nnoremap <F2>    :cnext<CR>
:nnoremap <S-F2>  :cprev<CR>
:nnoremap <F3>    :cnfile<CR>
:nnoremap <S-F3>  :cpfile<CR>
:nnoremap <F4>    :cfirst<CR>
:nnoremap <S-F4>  :clast<CR>
