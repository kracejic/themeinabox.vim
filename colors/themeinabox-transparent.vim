
runtime colors/themeinabox.vim

if has('gui_running')
else
    hi Normal                    guibg=NONE ctermbg=NONE
    hi VertSplit                 guibg=NONE ctermbg=NONE
endif

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

