"=============================================================================
" FILE: denite.vim
" AUTHOR: Shougo Matsushita <Shougo.Matsu at gmail.com>
" License: MIT license
"=============================================================================

let s:context = {}

function! denite#initialize() abort "{{{
  return denite#init#_initialize()
endfunction"}}}
function! denite#start(sources, ...) abort "{{{
  let context = extend(denite#init#_context(), get(a:000, 0, {}))
  let context.custom = denite#custom#get()
  let s:context = context

  if denite#initialize()
    return
  endif

  if has('nvim')
    return _denite_start(a:sources, context)
  else
    return denite#vim#_start(a:sources, context)
  endif
endfunction"}}}

function! denite#get_current_context() abort "{{{
  return s:context
endfunction"}}}

" vim: foldmethod=marker
