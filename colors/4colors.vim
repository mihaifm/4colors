" Copyright (C) 2021-present Mihai Ciuraru
" License: MIT

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "4colors"

"""""""""""
" 4 Colors

let g:fourcolors#guiWarm   = '#FFA500' " orange
let g:fourcolors#ctermWarm = 214 " orange1 ffaf00

let g:fourcolors#guiHot    = '#F08080' " lightcoral
let g:fourcolors#ctermHot  = 210 " lightcoral ff8787

let g:fourcolors#guiChill  = '#98FB98' " lightgreen
let g:fourcolors#ctermChill= 120 " lightgreen 87ff87

let g:fourcolors#guiCold   = '#40E0D0' " turquoise
let g:fourcolors#ctermCold = 80 " mediumturquoise 5fd7d7

"""""""""""""""
" 4 Non-colors

let g:fourcolors#guiWhite   = '#FAEBD7' " antiquewhite
let g:fourcolors#ctermWhite = 230 " cornsilk1 ffffd7

let g:fourcolors#guiGray    = '#C0C0C0' " silver
let g:fourcolors#ctermGray  = 251 " grey78 c6c6c6

let g:fourcolors#guiDark    = '#2F4F4F' " darkslategray
let g:fourcolors#ctermDark  = 59 " gray37 5f5f5f

let g:fourcolors#guiBlack   = '#222222'
let g:fourcolors#ctermBlack = 235 " gray15 262626

""""""""""""""""""""""""""
" Variable simplification

let s:whiteFg = ' ctermfg=' . g:fourcolors#ctermWhite . ' guifg=' . g:fourcolors#guiWhite
let s:whiteBg = ' ctermbg=' . g:fourcolors#ctermWhite . ' guibg=' . g:fourcolors#guiWhite
let s:blackFg = ' ctermfg=' . g:fourcolors#ctermBlack . ' guifg=' . g:fourcolors#guiBlack
let s:blackBg = ' ctermbg=' . g:fourcolors#ctermBlack . ' guibg=' . g:fourcolors#guiBlack
let s:grayFg = ' ctermfg=' . g:fourcolors#ctermGray . ' guifg=' . g:fourcolors#guiGray
let s:grayBg = ' ctermbg=' . g:fourcolors#ctermGray . ' guibg=' . g:fourcolors#guiGray
let s:darkFg = ' ctermfg=' . g:fourcolors#ctermDark . ' guifg=' . g:fourcolors#guiDark
let s:darkBg = ' ctermbg=' . g:fourcolors#ctermDark . ' guibg=' . g:fourcolors#guiDark
let s:warmFg = ' ctermfg=' . g:fourcolors#ctermWarm . ' guifg=' . g:fourcolors#guiWarm
let s:warmBg = ' ctermbg=' . g:fourcolors#ctermWarm . ' guibg=' . g:fourcolors#guiWarm
let s:hotFg = ' ctermfg=' . g:fourcolors#ctermHot . ' guifg=' . g:fourcolors#guiHot
let s:hotBg = ' ctermbg=' . g:fourcolors#ctermHot . ' guibg=' . g:fourcolors#guiHot
let s:chillFg = ' ctermfg=' . g:fourcolors#ctermChill . ' guifg=' . g:fourcolors#guiChill
let s:chillBg = ' ctermbg=' . g:fourcolors#ctermChill . ' guibg=' . g:fourcolors#guiChill
let s:coldFg = ' ctermfg=' . g:fourcolors#ctermCold . ' guifg=' . g:fourcolors#guiCold
let s:coldBg = ' ctermbg=' . g:fourcolors#ctermCold . ' guibg=' . g:fourcolors#guiCold

let s:none = ' cterm=none gui=none '
let s:reverse = ' cterm=reverse gui=reverse '
let s:bg = ' ctermbg=bg ctermfg=bg guibg=bg guifg=bg '

let g:fourcolors#whiteFg = s:whiteFg
let g:fourcolors#whiteBg = s:whiteBg
let g:fourcolors#blackFg = s:blackFg
let g:fourcolors#blackBg = s:blackBg
let g:fourcolors#grayFg = s:grayFg
let g:fourcolors#grayBg = s:grayBg
let g:fourcolors#darkFg = s:darkFg
let g:fourcolors#darkBg = s:darkBg
let g:fourcolors#warmFg = s:warmFg
let g:fourcolors#warmBg = s:warmBg
let g:fourcolors#hotFg = s:hotFg
let g:fourcolors#hotBg = s:hotBg
let g:fourcolors#chillFg = s:chillFg
let g:fourcolors#chillBg = s:chillBg
let g:fourcolors#coldFg = s:coldFg
let g:fourcolors#coldBg = s:coldBg

"""""""""
" General

exe 'hi Normal' . s:blackBg . s:whiteFg . s:none

hi! link FoldColumn Normal

exe 'hi Visual' . s:darkBg . s:none

hi! link CursorLine Visual

exe 'hi Cursor' . s:warmBg . s:none
exe 'hi MatchParen' . s:warmBg . s:none
exe 'hi Directory' . s:warmFg . s:none
exe 'hi Folded' . s:blackFg . s:none
exe 'hi NonText' . s:darkFg . s:none
exe 'hi Search' . s:coldFg . s:blackBg . s:reverse

""""""
" GUI

exe 'hi Pmenu' . s:darkBg
exe 'hi VertSplit' . s:darkBg . s:darkFg . s:none
exe 'hi StatusLine' . s:darkBg . s:grayFg . s:none
exe 'hi StatusLineTerm' . s:darkBg . s:grayFg . s:none
exe 'hi StatusLineNC' . s:darkBg . s:grayFg . s:none
exe 'hi StatusLineTermNC' . s:darkBg . s:grayFg . s:none
exe 'hi SignColumn' . s:blackBg . s:grayFg . s:none
exe 'hi LineNr' . s:blackBg . s:darkFg . s:none
exe 'hi EndOfBuffer' . s:bg
exe 'hi ToolbarLine' . s:blackBg . s:none
exe 'hi ToolbarButton' . s:blackBg . s:warmFg . s:none

""""""""""""""
" User groups

exe 'hi User1' . s:warmFg . s:darkBg . s:none
exe 'hi User2' . s:coldFg . s:darkBg . s:none
exe 'hi User3' . s:chillFg . s:darkBg . s:none
exe 'hi User4' . s:hotFg . s:darkBg . s:none

"""""""""
" Syntax

exe 'hi Comment' . s:chillFg . s:none

hi! link Todo Comment
hi! link SpecialComment Comment

exe 'hi String' . s:hotFg . s:none

hi! link Special String
hi! link Number String
hi! link Character String
hi! link Title String

exe 'hi Function' . s:coldFg . s:none

exe 'hi Identifier' . s:coldFg . s:none

hi! link Constant Identifier
hi! link Define Identifier
hi! link Statement Identifier
hi! link Include Identifier
hi! link Boolean Identifier
hi! link Type Identifier
hi! link Conditional Identifier
hi! link Operator Identifier
hi! link Keyword Identifier
hi! link Macro Identifier
hi! link PreCondit Identifier
hi! link StorageClass Identifier
hi! link Structure Identifier
hi! link Typedef Identifier
hi! link Tag Identifier
hi! link Delimiter Identifier
hi! link Debug Identifier
hi! link PreProc Identifier

""""""""""""""""""""
" Language specific

hi! link javaScriptBraces Normal
hi! link rubyStringDelimiter String
hi! link railsMethod Keyword

exe 'hi xmlTag' . s:coldFg . s:none

hi! link xmlTagName  xmlTag
hi! link xmlEndTag   xmlTag
hi! link xmlArg      xmlTag
hi! link htmlTag     xmlTag
hi! link htmlTagName xmlTagName
hi! link htmlEndTag  xmlEndTag
hi! link htmlArg     xmlArg

hi! link perlSigil xmlTag

exe 'hi! debugBreakpoint' . s:hotFg
exe 'hi! debugBreakpointDisabled' . s:grayBg . s:darkFg
hi! link debugPC Visual

