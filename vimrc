""
" @file vim settings for VIM Editor
"
" These are some steps should be done by manal.
"
"
" 1.256-color
"	$ vi ~/.bashrc
"	export TERM="xterm-256color"
" 
"
"
" @author baiyqukq@163.com
" @date 2020-05-01
"

" Use Vim settings, rather than Vi settings
set nocompatible

"Very hate vi backspace mode
set backspace=indent,eol,start

" Encodings
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,gbk,gb18030,gb2312,cp930,korea

" Do wrap
set nowrap

" Use mouse
set mouse=a

" wildmenu
if has("wildmenu")
	set wildmenu
	set wildmode=longest,list
endif

" Show the cursor position all the time
set ruler

" Display incomplete commands
set showcmd

" Display current edit mode
set showmode

" Do incremental searching
set incsearch

" Highlight search
set hlsearch

" Show line number 
set number

" Do not generate backup file
set nobackup

" Show match symbal
set showmatch

" I hate tab instead by spaces
set noexpandtab

" Set tab width
set tabstop=4

" Set backspace width
set softtabstop=4

" Set << and >> command to move width
set shiftwidth=4

" C style indent
set cindent 

"Change color scheme
colorscheme jellybeans
" Change background color
set background=dark

" Enable syntax except diff mode
if &diff
	syntax off
else
	syntax on
endif

" Vimdiff off syntax
if &diff
	syntax off
endif

" Enable to highlight doxygen tags
let g:load_doxygen_syntax=1


" Highlight current line
set cursorline

" Enable loading indent file for filetype
filetype indent plugin on

" Enable plugins
filetype plugin on
" enable the menu
set completeopt=menuone,longest

" enable modeline
set modeline

" filetype
autocmd BufNewFile,BufRead *.psql		set filetype=psql
autocmd BufNewFile,BufRead *.postgresql set filetype=postgresql
autocmd BufNewFile,BufRead *.proto		set filetype=proto
autocmd BufNewFile,BufRead *.md			set filetype=markdown
autocmd BufNewFile,BufRead *.nut		set filetype=squirrel

" Search files
let &path.="/usr/include,/usr/local/include"


" Dictionaries
set dict+=~/.vim/dict/words_c
set dict+=~/.vim/dict/words_cpp
set dict+=~/.vim/dict/words_macro


