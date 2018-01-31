" YEE

filetype on
syntax on
colorscheme industry
set encoding=utf8
set ffs=unix,mac,dos

set colorcolumn=90
set relativenumber

" turn tabs into spaces
set expandtab
set shiftwidth=2   " 2 Space warrior
set softtabstop=2

set noautoindent
set nocindent
set nosmartindent
set indentexpr=

set showmatch     " curly boy matcher
set mat=2         " how many tenths of a second to blink for matching
" set hlsearch
set hidden
set history=100   " Sets how many lines of history vim remembers

" set backup         " File to restore previous version
" set undofile       " File to undo changes after closing

set wildmenu

set ruler          " Always show current position
set lazyredraw     " Don't redraw while macroing (performance)
set magic          " Regex

" Always show the status line
set laststatus=2

" Default hi-lights: %#todo#, %#error#, %#LineNr#
" User defined: %1*
hi User1 ctermbg=black ctermfg=green guibg=green guifg=black
hi User2 ctermbg=black ctermfg=red
hi User3 ctermbg=black ctermfg=magenta
hi User4 ctermbg=black ctermfg=yellow
hi User5 ctermbg=black ctermfg=blue

set statusline=
set statusline+=%1*
" set statusline+=%F        " Whole file path
set statusline+=%t       " Tail of file name
" set statusline+=%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%5*
set statusline+=[%{&ff}]  " File format
set statusline+=%3*
set statusline+=%y       " file type
set statusline+=%2*
set statusline+=%m       " modified
set statusline+=%r       " read only
set statusline+=%h       " help
set statusline+=%=       " right align
set statusline+=%3*
set statusline+=%c,      " cursor column
set statusline+=%l       " cursor line
set statusline+=%2*
set statusline+=/%L      " total lines
set statusline+=\ %P     " percentage through file
set statusline+=%4*
set statusline+=\ 0x%04B " character under cursor

