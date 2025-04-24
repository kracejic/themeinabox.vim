syntax match VimwikiHeaderChar "^#*"
syntax match VimwikiHeader1 "^# .*" contains=VimwikiHeaderChar
syntax match VimwikiHeader2  "^## .*" contains=VimwikiHeaderChar
syntax match VimwikiHeader3  "^### .*" contains=VimwikiHeaderChar
syntax match VimwikiHeader4  "^#### .*" contains=VimwikiHeaderChar
syntax match VimwikiHeader5  "^##### .*" contains=VimwikiHeaderChar
syntax match VimwikiHeader6  "^###### .*" contains=VimwikiHeaderChar
syntax match Comment "^<<<.*"
syntax match Comment "^>>>.*"
syntax match VimwikiListTodo "^\s*[-*+] "
syntax match VimwikiBold "\*\*.*\*\*"
