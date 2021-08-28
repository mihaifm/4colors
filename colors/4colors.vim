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

"""""""""""""
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

"""""""""
" General

exe 'hi Normal' . s:blackBg . s:whiteFg

hi! link FoldColumn Normal

exe 'hi Visual' . s:darkBg

hi! link CursorLine Visual

exe 'hi Cursor' . s:warmBg
exe 'hi MatchParen' . s:warmBg
exe 'hi Directory' . s:warmFg
exe 'hi Folded' . s:blackFg
exe 'hi NonText' . s:grayFg

""""""
" GUI

exe 'hi Pmenu' . s:darkBg
exe 'hi VertSplit' . s:blackBg . s:darkFg
exe 'hi StatusLine' . s:darkBg . s:blackFg
exe 'hi StatusLineNC' . s:blackBg . s:darkFg

""""""""""""""
" User groups

exe 'hi User1' . s:warmFg . s:darkBg
exe 'hi User2' . s:coldFg . s:darkBg
exe 'hi User3' . s:chillFg . s:darkBg
exe 'hi User4' . s:hotFg . s:darkBg

"""""""""
" Syntax

exe 'hi Comment' . s:chillFg

hi! link Todo Comment
hi! link SpecialComment Comment

exe 'hi String' . s:hotFg

hi! link Special String
hi! link Number String
hi! link Character String
hi! link Title String

exe 'hi Function' . s:coldFg

exe 'hi Identifier' . s:coldFg

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

exe 'hi xmlTag' . s:coldFg

hi! link xmlTagName  xmlTag
hi! link xmlEndTag   xmlTag
hi! link xmlArg      xmlTag
hi! link htmlTag     xmlTag
hi! link htmlTagName xmlTagName
hi! link htmlEndTag  xmlEndTag
hi! link htmlArg     xmlArg

hi! link perlSigil xmlTag
