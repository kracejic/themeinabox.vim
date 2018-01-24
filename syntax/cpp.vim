
syntax keyword Boolean true false NULL TRUE FALSE nullptr
syntax keyword Statement namespace stderr stdin stdout new this delete default override final
syntax keyword _OperatorComparison or and xor
syntax keyword Type Int8u Int8s Int16u Int16s Int32u Int32s Int64u Int64s

syntax keyword _OperatorComparison not

syntax match _Block "[{}]"
syntax match _Bracket "[\[\]]"
syntax match _OperatorComparison "[<>=!]"
syntax match _Operator "[-+&|=\/~.,;:*%&^?]"
syntax match _Operator "->"
syntax keyword _OperatorComparison not
syntax match _OperatorComparison "!="
syntax match _OperatorComparison "=="
syntax match _OperatorComparison "<="
syntax match _OperatorComparison ">="
syntax match _Todo "\<\(todo\|TODO\|FIX\|FIXME\)\>" contained
syntax match _Note "\<NOTE\|QUESTION\|OPEN\>" contained
syntax match _Doc "@\<\(param\s*\S*\|return\|author\|version\|since\|throws\|exception\)\>" contained
syntax match _Doc "\/\/\/" contained
syntax match _Doc "\/\/!" contained
syntax match _Doc "\/\/\/<" contained
syntax match _Doc "\/\/!<" contained
syntax match _DocStar "^\s*\*[^\/]" contained
syntax match _DocStar "^\s*\*$" contained
" syntax region _Comment_bold start="\*\S" end="\S\*"
syntax region _Comment start="\/\*" end="\*\/" contains=_Todo,_Note,_Doc
syntax region _CommentDox matchgroup=_DocStar start="\/\*\*" end="\*\/" contains=_Todo,_Note,_Doc,_DocStar
syntax match _Comment "\/\/.*$"  contains=_Todo,_Note,_Doc
syntax match _Define "#define"
syntax match _DefineArg "#define\s*\S*" contains=_Define
syn match  cUserCont   "^\s*\I\i*:$" contains=cUserLabel,_Default
syn match cUserCont   ";\s*\I\i*:$" contains=cUserLabel,_Default
syn match  cUserCont   "^\s*\I\i*:[^:]" contains=cUserLabel,_Default
syn match cUserCont   ";\s*\I\i*:[^:]" contains=cUserLabel,_Default
syn match  cUserLabel  "\I\i*" contained
syn match _Default "default"
syn match _Member "\<[a-z][A-Z][a-z_A-Z0-9]*\>"
syn match _Member "\<[a-z]_[a-z_A-Z0-9]*\>"
syn match Normal "[.]\<[a-z]_[a-z_A-Z0-9]*\>" contains=_Operator

hi _Block guifg=yellow1 guibg=NONE gui=none
hi link _Bracket Constant
hi link _Operator Operator
hi link _OperatorComparison OperatorComparison
hi link _Comment Comment
hi link _CommentDox Comment
hi link _Define cIncluded
hi link _DefineArg Identifier
hi! link _Default Statement
hi! link _Todo Todo
hi! link _Member Member
hi! link _Note String
hi! link _Doc cIncluded
hi! link _DocStar cIncluded
hi! link cOctalZero Number

" hi! link _Comment_bold VimwikiBold

