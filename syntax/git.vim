syntax match _GitGraphLine "^[|*][ |*/_\\|]*[0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f]\+" 
syntax match _GitGraphLine "^[|*][ |*/_\\|]*[0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f]\+[ ]*([^)]*)" 
syntax match _GitGraphLine "^[|*][ |*/_\\|]*$" 
syntax match _GitHash "[0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f]\+" containedin=_GitGraphLine contained
syntax match _GitTags "([^)]*)" containedin=_GitGraphLine contained

syntax match _GitAuthor "<.*>"
syntax match _GitItem "\[[^\]]*\]"
syntax match _GitTime "(.* ago)"

hi link _GitGraphLine Comment
hi link _GitHash Statement
hi link _GitTags Special
hi link _GitAuthor Special
hi link _GitItem Type
hi link _GitTime Number
