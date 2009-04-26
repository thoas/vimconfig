""""""""""""""""""""""""""""""""""""""""""""""""""
"Diverses options
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                                  " désactivation de la compatibilité avec vi
set background=dark                               " fond sombre
colorscheme desert                                " couleur
set guifont=Monospace\ 8
syntax enable                                     " activation de la coloration syntaxique
set number                                        " numérotation des lignes
set autoindent                                    " indentation automatique avancée
set smartindent                                   " indentation plus intelligente
set laststatus=2                                  " ajoute une barre de status
set backspace=indent,eol,start                    " autorisation du retour arrière
set history=50                                    " historique de 50 commandes
set ruler                                         " affiche la position courante au sein du fichier
set showcmd                                       " affiche la commande en cours
set shiftwidth=4                                  " nombre de tabulation pour l'indentation
set softtabstop=4				  " nombre d'espace pour la tabulation
set showmatch                                     " vérification présence ([ ou { à la frappe de )] ou }
filetype plugin indent on                         " détection automatique du type de fichier
autocmd FileType text setlocal textwidth=72       " les fichiers de type .txt sont limites à 72 caractères par ligne
autocmd FileType todo setlocal textwidth=72       " les fichiers de type .todo sont limites à 72 caractères par ligne
set fileformats=unix,mac,dos                      " gestion des retours chariot en fonction du type de fichier
set viewdir=/home/thoas/.vim/saveview/        " répertoire pour sauvegarder les vues, utiles pour les replis manuels
"set cursorline                                   " afficher la ligne courante
"hi CursorLine guibg=#4d4d4d                      " couleur de fond pour la ligne courante
set foldcolumn=2                                  " repère visuel pour les folds
"set guioptions-=T                                " supprime la barre d'outils
set incsearch                                     " recherche incrémentale
set hlsearch                                      " surligne les résultats de la recherche
""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping pour désactiver le surlignage des
"résultats d'une recherche
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <C-N> :noh<CR>
inoremap <Nul> <C-x><C-o>
""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping pour naviguer dans les lignes coupées
""""""""""""""""""""""""""""""""""""""""""""""""""
map <A-DOWN> gj
map <A-UP> gk
imap <A-UP> <ESC>gki
imap <A-DOWN> <ESC>gkj
"Chargement des types de fichiers
""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter *.txt set filetype=text             " chargement du type de fichier pour le format txt
autocmd BufEnter *.todo set filetype=todo            " chargement du type de fichier pour le format todo
"""""""""""""""""""""""""""""""""""""""""""""""""
"Omni-completion par CTRL-X_CTRL-O
""""""""""""""""""""""""""""""""""""""""""""""""""
au filetype html        set omnifunc=htmlcomplete#CompleteTags
au filetype css         set omnifunc=csscomplete#CompleteCSS
au filetype javascript  set omnifunc=javascriptcomplete#CompleteJS
au filetype c           set omnifunc=ccomplete#Complete
au filetype php         set omnifunc=phpcomplete#CompletePHP
au filetype ruby        set omnifunc=rubycomplete#Complete
au filetype sql         set omnifunc=sqlcomplete#Complete
au filetype python      set omnifunc=pythoncomplete#Complete
au filetype xml         set omnifunc=xmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
""""""""""""""""""""""""""""""""""""""""""""""""""
"Personnalisation de la barre de statut
""""""""""""""""""""""""""""""""""""""""""""""""""
"set statusline=%t%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [FENC=%{&fileencoding}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]\ [TAG=%{Tlist_Get_Tagname_By_Line()}]
""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping pour l'activation de l'explorateur
"système
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F9> :NERDTree<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping et configuration pour la liste des tags
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <C-Q> :quit<CR>
"let Tlist_Exit_OnlyWindow = 1		" vim se ferme si il reste uniquement la fenêtre des tags
"let Tlist_Process_File_Always = 1	" activation permanente du plugin pour la barre de statut
"let Tlist_Use_Right_Window = 1		" affiche les tags sur le côté droit de l'écran
""""""""""""""""""""""""""""""""""""""""""""""""""
"Sauvegarde automatique des vues, utiles pour les
"replis manuels
""""""""""""""""""""""""""""""""""""""""""""""""""
au BufWinLeave *.c mkview
au BufWinEnter *.c silent loadview
au BufWinLeave *.html mkview
au BufWinEnter *.html silent loadview
au BufWinLeave *.css mkview
au BufWinEnter *.css silent loadview
au BufWinLeave *.php mkview
au BufWinEnter *.php silent loadview
au BufWinLeave *.js mkview
au BufWinEnter *.js silent loadview
au BufWinLeave *.py mkview
au BufWinEnter *.py silent loadview
au BufWinLeave *.java mkview
au BufWinEnter *.java silent loadview
au BufWinLeave *.sql mkview
au BufWinEnter *.sql silent loadview
au BufWinLeave *.todo mkview
au BufWinEnter *.todo silent loadview
au BufWinLeave *.txt mkview
au BufWinEnter *.txt silent loadview
au BufWinLeave *.tex mkview
au BufWinEnter *.tex silent loadview
au BufWinLeave *.xml mkview
au BufWinEnter *.xml silent loadview
""""""""""""""""""""""""""""""""""""""""""""""""""
"Map pour se déplacer dans les onglets
""""""""""""""""""""""""""""""""""""""""""""""""""
map <tab> gt
""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping pour insérer la date du jour
""""""""""""""""""""""""""""""""""""""""""""""""""
imap \date  <C-R>=strftime("%d/%m/%Y")<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""
"Complétion par tabulation
""""""""""""""""""""""""""""""""""""""""""""""""""
function! CleverTab()
    "check if at beginning of line of after a space
    if strpart(getline('.'), 0, col('.')-1) =~ '^\s*$'
	return "\<Tab>"
    else
	"use know-word completion
	return "\<C-N>"
    endif
endfunction
"Mapping sur la touche Tab
inoremap <Tab> <C-R>=CleverTab()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""
"Dictionnaire français
"Liste des propositions par CTRL-X_CTRL-K
""""""""""""""""""""""""""""""""""""""""""""""""""
set dictionary+=/usr/share/dict/french
""""""""""""""""""""""""""""""""""""""""""""""""""
"Correction orthographique
"Liste des propositions par CTRL-X_s
""""""""""""""""""""""""""""""""""""""""""""""""""
set spellsuggest=5                                   " on affiche uniquement les 5 premières propositions 
autocmd BufEnter *.txt set spell                     " correction orthographique dans les fichiers textes
autocmd BufEnter *.txt set spelllang=fr              " correction orthographique dans les fichiers textes
""""""""""""""""""""""""""""""""""""""""""""""""""
"Infos-Bulles
""""""""""""""""""""""""""""""""""""""""""""""""""
function! FoldSpellBalloon()
    let foldStart = foldclosed(v:beval_lnum)
    let foldEnd = foldclosedend(v:beval_lnum)
    let lines = []
    "Detect if we are in a fold
    if foldStart < 0
	"Detect if we are on a misspelled word
	let lines = spellsuggest(spellbadword(v:beval_text)[0], 5, 0)
    else
	"We are in a fold
	let numLines = foldEnd - foldStart + 1
	"If we have too many lines in fold, show only the first 14
	"and the last 14 lines
	if(numLines > 31)
	    let lines = getline(foldStart, foldStart + 14)
	    let lines += ['-- Snipped ' . (numLines - 30) . ' lines --']
	    let lines += getline(foldEnd - 14, foldEnd)
	else
	    "Less than 30 lines, lets show all of them
	    let lines = getline(foldStart, foldEnd)
	endif
    endif
    "Return result
    return join(lines, has("balloon_multiline") ? "\n" : " ")
endfunction
"set balloonexpr=FoldSpellBalloon()
"set ballooneval
""""""""""""""""""""""""""""""""""""""""""""""""""
"Nom du fichier en cours dans l'onglet pour GVim
""""""""""""""""""""""""""""""""""""""""""""""""""
"function! ShortTabLabel()
"	let bufnrlist = tabpagebuflist(v:lnum)
"	"Show only the first 18 letters of the name + ..
"	let label = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
"	let filename = fnamemodify(label,':t')
"	"Only add .. if string is more than 20 letters
"	if strlen(filename) >=20
"		let ret=filename[0:17].'..'
"	else
"		let ret = filename
"	endif
"	return ret
"endfunction
"
"set guitablabel=%{ShortTabLabel()}
""""""""""""""""""""""""""""""""""""""""""""""""""
"Nom du fichier en cours dans l'onglet pour Vim
""""""""""""""""""""""""""""""""""""""""""""""""""
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
set tabline=%!ShortTabLine()
""""""""""""""""""""""""""""""""""""""""""""""""""
"Modification de l'affichage des replis
""""""""""""""""""""""""""""""""""""""""""""""""""
function! MyFoldFunction()
    let line = getline(v:foldstart)
    "Cleanup unwanted things in first line
    let sub = substitute(line, '/\*\|\*/\|^\s+', '', 'g')
    "Calculate lines in folded text
    let lines = v:foldend - v:foldstart + 1
    return v:folddashes.sub.' {...'.lines.' Lines...}'
endfunction
set foldtext=MyFoldFunction()
""""""""""""""""""""""""""""""""""""""""""""""""""
"Poser une marque visible avec F7
""""""""""""""""""""""""""""""""""""""""""""""""""
"sign define mark text=!> texthl=Mark
map <F7> :exe 'sign place 001 name=mark line='.line(".").' buffer='.winbufnr(0)<CR>
map <C-F7> :sign unplace<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""
"Chargement des templates
""""""""""""""""""""""""""""""""""""""""""""""""""
function! LoadTemplate(extension)
    silent! :execute '0r ~/.vim/templates/'.a:extension.'.tpl'
endfunction
autocmd BufNewFile * silent! call LoadTemplate('%:e')
