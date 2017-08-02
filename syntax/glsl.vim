
" Ogre 2.1 preprocesor
syntax match cInclude "@\<end\>"
syntax match cIncluded "@\<\(property\|foreach\|end\|insertpiece\|piece\|value\)\>\s*([^)]*)" contains=_preprocessorglsls
syntax match _preprocessorglsls "@\<\(property\|foreach\|end\|insertpiece\|piece\|value\)\>" contained
hi link _preprocessorglsls cInclude
