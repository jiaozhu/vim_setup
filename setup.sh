#!/bin/sh
# by Wythe Chao <hi@chinacode.io>
# License: GNU GPLv3

error() { clear; printf "ERROR:\\n%s\\n" "$1"; exit;}

if [ -f /etc/vimrc ];then
    VIMFILE=/etc/vimrc
fi

if [ -f /etc/vim/vimrc ];then
    VIMFILE=/etc/vim/vimrc
fi

cat << EOF >> $VIMFILE
set number
set nocompatible
syntax on
set showmode
set enc=utf-8  
set fencs=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1 
set t_Co=256
filetype indent on
set autoindent
set tabstop=2
set shiftwidth=4
set expandtab
set softtabstop=2
set relativenumber
set cursorline
hi CursorLine   cterm=NONE ctermbg=grey ctermfg=black guibg=darkred
set textwidth=80
set wrap
set linebreak
set wrapmargin=2
set scrolloff=5
set laststatus=2
set ruler
set showmatch
set incsearch
set ignorecase
set smartcase
set nobackup
set noswapfile
set undofile
set noerrorbells
set visualbell
set history=2000
set autoread
set listchars=tab:»■,trail:■
set list
set wildmenu
set wildmode=longest:list,full
EOF