" This configuration file was tested with
"       /usr/local/bin/vim (7.0) and
"       /usr/local/bin/gvim (7.0)
"this line prevents copydotfiles from recopying: dot-vimrc_included
syntax on
"set term=xterm
set et
set autoindent
set showmatch
set showmode
set tabstop=4
set shiftwidth=4
set number
set cindent
set ruler
set bs=indent,eol,start
set colorcolumn=80
"set sw=3  "this is the level of autoindent, adjust to taste
":fixdel
colorscheme desert
if has("gui_running" )
    set guifont=Monospace\ 14
endif
"if has("gui_running")
"  if has("gui_gtk2")
"    set guifont=Courier\ New\ 20
"  elseif has("gui_photon")
"    set guifont=Courier\ New:s20
"  elseif has("gui_kde")
"    set guifont=Courier\ New/20/-1/5/50/0/0/0/1/0
"  elseif has("x11")
"    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
"  else
"    set guifont=Courier_New:h20:cDEFAULT
"  endif
"endif
filetype plugin on
"c-support plugin conf
"let g:C_GlobalTemplateFile = '/home/rwu3/.vim/c-support/templates/Templates'
"let g:C_LocalTemplateFile = '/home/rwu3/.vim/c-support/templates/Templates'
"let g:C_CodeSnippets = '/home/rwu3/.vim/c-support/codesnippets'

execute pathogen#infect()
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
set encoding=utf-8
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
