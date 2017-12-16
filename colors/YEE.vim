" Reset to dark background, then reset everything to defaults:
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "YEE"

" First set Normal to regular white on black text colors:
hi Normal ctermfg=LightGray ctermbg=DarkYellow guifg=#dddddd guibg=Black

" Syntax highlighting (other color-groups using default, see :help group-name):
hi Comment    cterm=NONE ctermfg=DarkRed
hi Constant   cterm=NONE ctermfg=LightRed
hi Identifier cterm=NONE ctermfg=Magenta
hi Function   cterm=NONE ctermfg=DarkGreen
hi Statement  cterm=NONE ctermfg=Black
hi PreProc    cterm=NONE ctermfg=LightBlue
hi Type	      cterm=NONE ctermfg=Red
hi Special    cterm=NONE ctermfg=Yellow
hi Delimiter  cterm=NONE ctermfg=LightCyan


