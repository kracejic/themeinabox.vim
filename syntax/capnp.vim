if exists('b:current_syntax')
  finish
endif

syn case match

" Follow schema naming conventions so user-defined types stand out too.
syn match capnpIdentifier /\<[a-z_][a-zA-Z0-9_]*\>/
syn match capnpType /\<[A-Z][a-zA-Z0-9_]*\>/
syn keyword capnpKeyword struct enum interface union group extends const annotation
syn keyword capnpInclude using import embed
syn keyword capnpType Void Bool Int8 Int16 Int32 Int64 UInt8 UInt16 UInt32 UInt64
      \ Float32 Float64 Text Data List AnyPointer AnyStruct AnyList Capability
syn keyword capnpBoolean true false
syn keyword capnpConstant void
syn keyword capnpFloat inf nan

syn match capnpOperator /[-=:.*]/
syn match capnpOperator /->/
syn match capnpDelimiter /[{}()\[\],;]/
syn match capnpNumber /\<\d\+\>/
syn match capnpNumber /\<0[xX][0-9a-fA-F]\+\>/
syn match capnpFloat /\<\d\+\.\d*\%([eE][-+]\?\d\+\)\?/
syn match capnpFloat /\<\d\+[eE][-+]\?\d\+\>/

" Keep ordinals/file IDs and qualified annotation names visually distinct.
syn match capnpId /@\%(0[xX][0-9a-fA-F]\+\|\d\+\)\>/
syn match capnpAnnotation /\$[a-zA-Z_][a-zA-Z0-9_]*\%(\.[a-zA-Z_][a-zA-Z0-9_]*\)*/

" Containment prevents schema tokens and comment markers leaking into strings.
syn match capnpEscape /\\\%([abfnrtv\\"']\|[0-7]\{1,3}\|x[0-9a-fA-F]\{2}\|u[0-9a-fA-F]\{4}\|U[0-9a-fA-F]\{8}\)/ contained
syn region capnpString start=/"/ skip=/\\./ end=/"/ contains=capnpEscape
syn region capnpData start=/\<0x"/ end=/"/
syn keyword capnpTodo TODO FIXME XXX NOTE contained
syn match capnpComment /#.*/ contains=capnpTodo,@Spell

" Use theme groups so every themeinabox variant keeps its own palette.
hi def link capnpIdentifier Identifier
hi def link capnpType Type
hi def link capnpKeyword Statement
hi def link capnpInclude Include
hi def link capnpBoolean Boolean
hi def link capnpConstant Constant
hi def link capnpOperator Operator
hi def link capnpDelimiter Delimiter
hi def link capnpNumber Number
hi def link capnpFloat Float
hi def link capnpId Special
hi def link capnpAnnotation PreProc
hi def link capnpEscape SpecialChar
hi def link capnpString String
hi def link capnpData String
hi def link capnpTodo Todo
hi def link capnpComment Comment

let b:current_syntax = 'capnp'
