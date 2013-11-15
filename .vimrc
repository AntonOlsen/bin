version 5.0
set nocompatible

set expandtab
set formatoptions=tcql
set history=1000
set hlsearch
set incsearch " ...dynamically as they are typed.
set showmatch
set viminfo='20,\"50
set title
set paste

set hidden


" Formatting options
set ts=4  " Tabs are 4 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=4  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

" Search Options
set ignorecase
set smartcase

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set scrolloff=3

set lcs=eol:\

set tags=~/.vim/mytags/framework

syntax on
filetype on
filetype plugin on
filetype indent on

let php_minlines=500
set syntax=php

set wildmode=list:longest
set wildmenu

set ruler

let g:debuggerPort = 9001

set paste
