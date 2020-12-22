
runtime colors/themeinabox.vim

if has('gui_running')
else
    hi Normal                    guibg=NONE ctermbg=NONE
    hi VertSplit                 guibg=NONE ctermbg=NONE
endif

highlight lspReference cterm=underline

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

hi CursorLine                guibg=NONE gui=NONE ctermbg=NONE cterm=NONE
" hi CursorLine                guibg=#3a3a3a gui=NONE ctermbg=237 cterm=NONE

let g:indentLine_bgcolor_term = 0
