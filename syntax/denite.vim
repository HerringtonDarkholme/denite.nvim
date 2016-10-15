if exists('b:current_syntax')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim
highlight default link deniteCandidateInputKeyword  Function

let b:current_syntax = 'denite'

let &cpo = s:save_cpo
unlet s:save_cpo

