" Vim syntax file
" Language:             Custom Journal File

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn match matchdate "\d\{1,4\}[-]\d\{2\}[-]\d\{2\}"
syn match matchurl "http[s]\?:\/\/[[:alnum:]%\/_#.-]*"
syn match matchquest "\(^\s*\)\@<=?\s"
"syn match matchurgent "\(^\s*\)\@<=!\s"
syn match matchtodo "!.*$"
syn match matchdone "!!.*$"
syn match matchitem "\(^\s*\)\@<=-\s"
syn match matchtime "^\d\{4\}" contains=matchdate
syn region header start="<" end=">"

syn case ignore

" Colors: Number, Special, Type, Operator, Identifier, Comment, Normal
hi def link matchdate                   Operator
hi def link matchurl                    comment
hi def link matchtodo                   Operator
hi def link matchdone                   Identifier
hi def link matchquest                  Special
hi def link matchitem                   Normal
hi def link matchtime                   Comment
"hi header                      cterm=Underline
hi header cterm=Underline,None ctermfg=148

let b:current_syntax = "journal"

let &cpo = s:cpo_save
unlet s:cpo_save
