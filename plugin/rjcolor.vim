" vim: set sw=4 et fdm=marker:
"
" riajyu.vim - 
"
" Version: 0.1
" Maintainer:	yaasita < https://github.com/yaasita/tktoutline >
" Last Change:	2012/12/09.

let g:rjcolors_list = split(globpath(&rtp, 'colors/*.vim'), '\n')
let g:rjcolors_counter=-1
command! RjcolorNext call <SID>Colorscheme_next()
command! RjcolorBack call <SID>Colorscheme_back()

"Function: s:Colorscheme_next() {{{1
function! s:Colorscheme_next()
    let g:rjcolors_counter += 1
    let color_name_extension = fnamemodify(g:rjcolors_list[g:rjcolors_counter],":t")
	let idx=stridx(color_name_extension,".")
    let color_name = color_name_extension[0:idx-1]
    execute "colorscheme " . color_name
    echo color_name
endfunction
"Function: s:Colorscheme_back() {{{1
function! s:Colorscheme_back()
    let g:rjcolors_counter -= 1
    let color_name_extension = fnamemodify(g:rjcolors_list[g:rjcolors_counter],":t")
	let idx=stridx(color_name_extension,".")
    let color_name = color_name_extension[0:idx-1]
    execute "colorscheme " . color_name
    echo color_name
endfunction
