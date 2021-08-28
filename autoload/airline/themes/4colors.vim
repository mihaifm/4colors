scriptencoding utf-8

let g:airline#themes#4colors#palette = {}

" [ guifg, guibg, ctermfg, ctermbg, opts ]. See "help attr-list" for valid values for the "opt" value.
let s:N1 = [g:fourcolors#guiBlack, g:fourcolors#guiChill, g:fourcolors#ctermBlack, g:fourcolors#ctermChill]
let s:N2 = [g:fourcolors#guiBlack, g:fourcolors#guiGray, g:fourcolors#ctermBlack, g:fourcolors#ctermGray]
let s:N3 = [g:fourcolors#guiChill, g:fourcolors#guiDark, g:fourcolors#ctermChill, g:fourcolors#ctermDark]

let g:airline#themes#4colors#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#4colors#palette.accents = {
      \ 'red': [ g:fourcolors#guiHot, '' , 160 , ''  ] }

let pal = g:airline#themes#4colors#palette
for item in ['insert', 'replace', 'visual', 'inactive', 'ctrlp']
  let pal[item] = pal.normal
  for suffix in ['_modified', '_paste']
    exe "let pal.".item.suffix. " = pal.normal"
  endfor
endfor
