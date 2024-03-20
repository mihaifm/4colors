" Copyright (C) 2024-present Mihai Ciuraru
" License: MIT

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:fourWarm = [g:fourcolors#guiWarm, g:fourcolors#ctermWarm]
let s:fourHot = [g:fourcolors#guiHot, g:fourcolors#ctermHot]
let s:fourChill = [g:fourcolors#guiChill, g:fourcolors#ctermChill]
let s:fourCold = [g:fourcolors#guiCold, g:fourcolors#ctermCold]

let s:fourWhite = [g:fourcolors#guiWhite, g:fourcolors#ctermWhite]
let s:fourDark = [g:fourcolors#guiDark, g:fourcolors#ctermDark]
let s:fourGray = [g:fourcolors#guiGray, g:fourcolors#ctermGray]
let s:fourBlack = [g:fourcolors#guiBlack, g:fourcolors#ctermBlack]

let s:p.normal.left = [ [ s:fourDark, s:fourChill, 'bold' ], [ s:fourWhite, s:fourDark ] ]
let s:p.normal.middle = [ [ s:fourGray, s:fourDark ] ]
let s:p.normal.right = [ [ s:fourDark, s:fourWhite ], [ s:fourDark, s:fourGray ] ]
let s:p.normal.warning = [ [ s:fourDark, s:fourWarm ] ]
let s:p.normal.error = [ [ s:fourDark, s:fourHot ] ]

let s:p.inactive.left = [ [ s:fourDark, s:fourGray, 'bold' ], [ s:fourBlack, s:fourDark ] ]
let s:p.inactive.middle = [ [ s:fourBlack, s:fourDark ] ]
let s:p.inactive.right = [ [ s:fourBlack, s:fourGray ], [ s:fourBlack, s:fourDark ] ]

let s:p.insert.left = [ [ s:fourDark, s:fourCold, 'bold' ], [ s:fourWhite, s:fourDark ] ]
let s:p.replace.left = [ [ s:fourDark, s:fourHot, 'bold' ], [ s:fourWhite, s:fourDark ] ]
let s:p.visual.left = [ [ s:fourWhite, s:fourDark, 'bold' ], [ s:fourWhite, s:fourDark ] ]

let s:p.tabline.left = [ [ s:fourGray, s:fourDark ] ]
let s:p.tabline.middle = [ [ s:fourGray, s:fourDark ] ]
let s:p.tabline.right = [ [ s:fourGray, s:fourDark ] ]
let s:p.tabline.tabsel = [ [ s:fourDark, s:fourGray ] ]

let g:lightline#colorscheme#4colors#palette = lightline#colorscheme#flatten(s:p)
