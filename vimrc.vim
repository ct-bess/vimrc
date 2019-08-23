" YEE

filetype on
syntax on
colorscheme industry
set encoding=utf8
set ffs=unix,mac,dos

" Cursor Shape, only for XTerm or somethin idk
let &t_SI.="\e[2 q"  " SI --> Insert, 2 --> Nonblinky block
let &t_EI.="\e[2 q"  " EI --> Normal
" Cursor Coloer
let &t_SI="\e]12;orange\x7"
let &t_EI="\e]12;cyan\x7"

" set nocompatible
set showcmd         " Shows what cmd your typing

set colorcolumn=90
set relativenumber

" turn tabs into spaces
set expandtab
set shiftwidth=2   " 2 Space warrior
set softtabstop=2

set mouse=         " pesky little thing
set noautoindent
set nocindent
set nosmartindent
set indentexpr=

set showmatch     " curly boy matcher
set mat=2         " how many tenths of a second to blink for matching
" set hlsearch      " search highlighting
set incsearch     " show match while search
set hidden
set history=100   " Sets how many lines of history vim remembers

" set backup         " File to restore previous version
" set undofile       " File to undo changes after closing

set wildmenu

set ruler          " Always show current position
set lazyredraw     " Don't redraw while macroing (performance)
set magic          " Regex

" Essential
map <f9> IYEET<esc>

" The nuke
" map <f8> ggDiYEET<esc>j500dd:wq<return>

" set makeprg        " progress

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

let mapleader = "`"
let g:mapleader = "`"

" find selection from * or #
" vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
" vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" imap <leader>pf printf(  );<left><left><left>
" imap <leader>in #include <><left>

" Counts the words in a LaTeX file, detex will ignore the macros
function! WC()
  let filename = expand("%")
  let cmd = "detex " . filename . " | wc -w | tr -d [:space:]"
  let result = system(cmd)
  echo result . " words"
endfunction

command WC call WC()

" Search for cword and replace w/input() under cursor for all open buffers
fun! Replace()
  let s:word = input("Replace " . expand('<cword>') . " with:")
  :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/ge'
  :unlet! s:word
endfun

map <leader>r :call Replace()<CR>

" open error console
map <leader>cc :botright cope<CR>
" move to next error
map <leader>] :cn<CR>
" move to prev error
map <leader>[ :cp<CR>

" ---------------------------------------------------------------------------------
" Programming Specific
" ---------------------------------------------------------------------------------

" generate header guard
fun! HeaderGuard()
  let basename = substitute(bufname(""), '.*/', '', '')
  let guard = substitute(toupper(basename), '\.', '_', "H")
  call append(0, "#ifndef " . guard)
  call append(1, "#define " . guard)
  call append( line("$"), "#endif // for #ifndef " . guard )
endfun

map <leader>g :call HeaderGuard()<CR>
