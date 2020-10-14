" Vim syntax file
" Language:             Custom Journal File

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn match matchdate "\d\{1,4}\([-/:]\d\{1,4\}\)\{1,3\}"
syn match matchurl "http[s]\?:\/\/[[:alnum:]%\/_#.-]*"
syn match matchquest "\(^\s*\)\@<=?\s"
syn match matchurgent "\(^\s*\)\@<=!\s"
syn match matchitem "\(^\s*\)\@<=-\s"
syn region header start="<" end=">"

syn case ignore

" Colors: Number, Special, Type, Operator, Identifier, Comment, Normal
hi def link matchdate                   Operator
hi def link matchurl                    comment
hi def link matchurgent                 Identifier
hi def link matchquest                  Special
hi def link matchitem                   Normal
hi def header                           cterm=underline,bold

let b:current_syntax = "journal"

let &cpo = s:cpo_save
unlet s:cpo_save
