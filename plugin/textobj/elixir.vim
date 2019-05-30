if exists('g:loaded_textobj_elixir_plugin')
  finish
endif
let g:loaded_textobj_elixir_plugin = 1

if !exists('g:vim_textobj_elixir_mapping')
  let g:vim_textobj_elixir_mapping = 'e'
endif

let s:save_cpo = &cpo
set cpo&vim

call textobj#user#plugin('elixir', {
    \ 'any' : {
    \      'select-a' : 'a' . g:vim_textobj_elixir_mapping, '*select-a-function*' : 'textobj#elixir#any_select_a',
    \      'select-i' : 'i' . g:vim_textobj_elixir_mapping, '*select-i-function*' : 'textobj#elixir#any_select_i',
    \   },
    \ })

let &cpo = s:save_cpo
unlet s:save_cpo
