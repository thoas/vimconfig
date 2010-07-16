source $HOME/.vim/settings.vim
source $HOME/.vim/functions.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/map.vim
source $HOME/.vim/autocmd.vim

if has("autocmd")
    au Filetype html,xml,xsl,rhtml,htmldjango source $HOME/.vim/scripts/closetag.vim
endif