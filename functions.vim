function! ShortTabLabel()
   let bufnrlist = tabpagebuflist(v:lnum)
   "Show only the first 18 letters of the name + ..
   let label = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
   let filename = fnamemodify(label,':t')
   "Only add .. if string is more than 20 letters
   if strlen(filename) >=20
       let ret=filename[0:17].'..'
   else
       let ret = filename
   endif
   return ret
endfunction

function! ShortTabLine()
    let ret = ''
    for i in range(tabpagenr('$'))
    "Select the color group for highlighting active tab
    if i + 1 == tabpagenr()
        let ret .= '%#errorMsg#'
    else
        let ret .= '%#TabLine#'
    endif

    "Find the buffername for the tablabel
    let buflist = tabpagebuflist(i+1)
    let winnr = tabpagewinnr(i+1)
    let buffername = bufname(buflist[winnr - 1])
    let filename = fnamemodify(buffername, ':t')
    "Check if there is no name
    if filename == ''
        let filename = 'noname'
    endif
    "Only show the first 18 letters of the name and
    ".. if the filename is more than 20 letters long
    if strlen(filename) >= 8
        let ret .= '['.filename[0:17].'..]'
    else
        let ret .= '['.filename.']'
    endif
    endfor

    "After the last tab fill with TabLineFill and reset tab page #
    let ret .= '%#TabLineFill#%T'
    return ret
endfunction

function! MyFoldFunction()
    let line = getline(v:foldstart)
    "Cleanup unwanted things in first line
    let sub = substitute(line, '/\*\|\*/\|^\s+', '', 'g')
    "Calculate lines in folded text
    let lines = v:foldend - v:foldstart + 1
    return v:folddashes.sub.' {...'.lines.' Lines...}'
endfunction

" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction

function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" Statusline
function! GetCWD()
	return expand(":pwd")
endfunction

function! IsHelp()
	return &buftype=='help'?' (help) ':''
endfunction

function! GetName()
	return expand("%:t")==''?'<none>':expand("%:t")
endfunction

command! -nargs=* Wrap set wrap linebreak nolist