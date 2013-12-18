version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set paste
set backspace=indent,eol,start
set cindent
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=tcqr
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set listchars=eol:\\
set printoptions=paper:letter
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set scrolloff=3
set shiftwidth=4
set smartcase
set smarttab
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set tags=~/.vim/mytags/framework
set title
set wildmenu
set wildmode=list:longest
" vim: set ft=vim :
