
syntax keyword Boolean true false null
syntax keyword Statement stdout new this delete or and xor override final
syntax keyword Type String
syntax keyword _OperatorComparison not

syntax match _Block "[{}]" containedin=javaParenT,javaParenT1,javaParenT2,javaParenT3
syntax match _Bracket "[\[\]]" containedin=javaParenT,javaParenT1,javaParenT2,javaParenT3
syntax match _OperatorComparison "[<>=!]" containedin=javaParenT,javaParenT1,javaParenT2,javaParenT3
syntax match _Operator "[-+&|=\/~.,;:*%&^?]" containedin=javaParenT,javaParenT1,javaParenT2,javaParenT3
syntax match _OperatorComparison "not" containedin=javaParenT,javaParenT1,javaParenT2,javaParenT3
syntax match _OperatorComparison "!=" containedin=javaParenT,javaParenT1,javaParenT2,javaParenT3
syntax match _OperatorComparison "==" containedin=javaParenT,javaParenT1,javaParenT2,javaParenT3
syntax match _OperatorComparison "<=" containedin=javaParenT,javaParenT1,javaParenT2,javaParenT3
syntax match _OperatorComparison ">=" containedin=javaParenT,javaParenT1,javaParenT2,javaParenT3
syntax match _Todo "\<\(todo\|TODO\|FIX\|FIXME\)\>" contained
syntax match _Note "\<NOTE\|QUESTION\|OPEN\>" contained
syntax match _Doc "@\<\(param\s*\S*\|return\|author\|version\|since\|throws\|exception\)\>" contained
" syntax region _Comment_bold start="\*\S" end="\S\*"
syntax region _Comment start="\/\*" end="\*\/" contains=_Todo,_Note,_Doc
syntax match _Comment "\/\/.*$"  contains=_Todo,_Note,_Doc
syntax match _Define "#define"
syntax match _DefineArg "#define\s*\S*" contains=_Define
syn match  cUserCont   "^\s*\I\i*\s*:$" contains=cUserLabel,_Default
syn match cUserCont   ";\s*\I\i*\s*:$" contains=cUserLabel,_Default
syn match  cUserCont   "^\s*\I\i*\s*:[^:]" contains=cUserLabel,_Default
syn match cUserCont   ";\s*\I\i*\s*:[^:]" contains=cUserLabel,_Default
syn match  cUserLabel  "\I\i*" contained
syn match _Default "default"
syn match _Member "\<[a-z][A-Z][a-z_A-Z0-9]*\>"
syn match _Member "\<[a-z]_[a-z_A-Z0-9]*\>"
syn match _Member "\<[a-z][A-Z][a-z_A-Z0-9]*\>" containedin=javaParenT,javaParenT1,javaParenT2,javaParenT3
syn match _Member "\<[a-z]_[a-z_A-Z0-9]*\>" containedin=javaParenT,javaParenT1,javaParenT2,javaParenT3

syntax match _FunctionName "[a-zA-Z_][a-zA-Z_0-9]*[ ]*(" contains=_OpenParen
syntax match _OpenParen "(" contained
hi link _FunctionName Identifier
hi link _OpenParen Normal

hi link javaParenError Normal

hi _Block guifg=yellow1 guibg=NONE gui=none
hi link _Bracket Constant
hi link _Operator Operator
hi link _OperatorComparison OperatorComparison
hi link _Comment Comment
hi link _Define cIncluded
hi link _DefineArg Identifier
hi! link _Default Statement
hi! link _Todo Todo
hi! link _Member Member
hi! link _Note String
hi! link _Doc cIncluded
hi! link htmlError Comment
hi! link htmlTag Comment
" hi! link _Comment_bold VimwikiBold

