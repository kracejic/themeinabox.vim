" Vim color file - themeinabox
" Generated by http://bytefluent.com/vivify 2016-06-06
set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
syntax reset

set t_Co=256
let g:colors_name = "themeinabox"

" autocmd! FileType c,cpp,java,php call CSyntaxAfter()

let g:indentline_bgcolor_term = 235
:let g:indentline_color_term = 237

hi Normal                    guifg=#dfdfdf guibg=#262626 ctermfg=188 ctermbg=235
hi VertSplit                 guifg=#444444 guibg=#262626 gui=NONE ctermfg=238 ctermbg=235 cterm=NONE
hi Search                    guifg=#000000 guibg=#5f5f87 ctermfg=0 ctermbg=60 cterm=NONE
hi Visual                    guibg=#5f5f87 ctermbg=60
hi LineNr                    guifg=#666666 ctermfg=242
hi Cursor                    guifg=#000000 guibg=#FFFFFF ctermfg=0 ctermbg=15
hi CursorLine                guibg=#323232 gui=NONE ctermbg=236 cterm=NONE
hi CursorLineNr              guifg=#666666 gui=NONE ctermfg=253 cterm=NONE
hi ColorColumn               guibg=#1c1c1c ctermbg=234
hi! link CursorColumn ColorColumn
hi SignColumn                guifg=#FFFFFF guibg=NONE ctermfg=15 ctermbg=NONE

" StatusLine
" Bold
hi User1                     guifg=#eeeeee guibg=#606060 gui=bold ctermfg=255 ctermbg=241 cterm=bold
" Yellow
hi User2                     guifg=#FFAF00 guibg=#606060 gui=bold ctermfg=214 ctermbg=241 cterm=bold
" Green
hi User3                     guifg=#5fff00 guibg=#606060 gui=bold ctermfg=82 ctermbg=241 cterm=bold
" Red
hi User4                     guifg=#870000 guibg=#606060 gui=bold ctermfg=88 ctermbg=241 cterm=bold
hi User5                     guifg=#e4e4e4 guibg=#606060 gui=bold ctermfg=254 ctermbg=241 cterm=bold
hi User6                     guifg=#e4e4e4 guibg=#606060 gui=bold ctermfg=254 ctermbg=241 cterm=bold
hi User7                     guifg=#e4e4e4 guibg=#606060 gui=bold ctermfg=254 ctermbg=241 cterm=bold
hi User8                     guifg=#e4e4e4 guibg=#606060 gui=bold ctermfg=254 ctermbg=241 cterm=bold
hi User9                     guifg=#e4e4e4 guibg=#606060 gui=bold ctermfg=254 ctermbg=241 cterm=bold
hi StatusLine                guifg=#e4e4e4 guibg=#606060 gui=NONE ctermfg=254 ctermbg=241 cterm=NONE
hi StatusLineNC              guifg=#585858 guibg=#303030 gui=NONE ctermfg=240 ctermbg=236 cterm=NONE

" Folds
" -----
" line used for closed folds
hi Folded                    guifg=#af87d7 guibg=NONE gui=NONE ctermfg=140 ctermbg=NONE cterm=NONE
hi! link FoldColumn SignColumn

" Invisible Characters
" ------------------
hi NonText                   guifg=#767676 gui=NONE cterm=NONE ctermfg=243
hi SpecialKey                guifg=#767676 gui=NONE cterm=NONE ctermfg=243

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#87af5f gui=NONE ctermfg=107 cterm=NONE

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#ffffff guibg=#444444 gui=NONE ctermfg=15 ctermbg=238 cterm=NONE
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#87af5f gui=NONE ctermfg=0 ctermbg=107 cterm=NONE
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E gui=NONE ctermfg=15 ctermbg=60 cterm=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb                guifg=#ffffff guibg=#a8a8a8 gui=NONE ctermfg=15 ctermbg=248 cterm=NONE

" Code constructs
" ---------------
hi Comment                   guifg=#7d7d7d ctermfg=244
hi Todo                      guifg=#df5f5f guibg=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
hi Constant                  guifg=#d75faf ctermfg=169
hi Error                     guifg=#990000 guibg=NONE ctermfg=88 ctermbg=NONE
hi WarningMsg                guifg=#800000 guibg=NONE ctermfg=1 ctermbg=NONE
hi ErrorMsg                  guifg=#800000 guibg=NONE ctermfg=1 ctermbg=NONE
hi Identifier                guifg=#87afff gui=NONE ctermfg=111 cterm=NONE
hi Keyword                   guifg=#e09146 gui=NONE ctermfg=99 cterm=NONE
hi Number                    guifg=#78add2 ctermfg=110
hi Statement                 guifg=#e09146 gui=NONE ctermfg=99 cterm=NONE
hi String                    guifg=#78add2 ctermfg=110
"hi Title                     guifg=#FFFFFF ctermfg=15
hi! link Title Statement
hi Type                      guifg=#5f5faf gui=NONE ctermfg=61 cterm=NONE
hi PreProc                   guifg=#af00af ctermfg=127
hi Special                   guifg=#87afd7 ctermfg=110
hi cParen                   guifg=#87afd7 ctermfg=110

hi green                   guifg=#5fd700 ctermfg=76
hi red                     guifg=#d75f00 ctermfg=166
hi warn                    guifg=#d75faf ctermfg=169

" C++
" ---

"hi cppSTLnamespace          guifg=#a6e043 gui=NONE ctermfg=149 cterm=NONE
hi! link cppSTLnamespace normal
hi! link cppSTLconstant normal
hi! link cPreCondit cIncluded
hi! link cDefine cIncluded
hi! link cUserLabel cIncluded

hi Operator                  guifg=#875fff ctermfg=99
hi OperatorComparison        guifg=#875fd7 ctermfg=98

hi cInclude                  guifg=#4e4e4e ctermfg=239
hi cIncluded                 guifg=#5f5f87 ctermfg=60
hi Member                  guifg=#ffffaf ctermfg=229

" Syntastic

hi! SyntasticErrorSign guifg=#d70000 gui=bold ctermfg=160 cterm=bold
hi! SyntasticErrorLine ctermbg=NONE
hi! SyntasticError ctermbg=NONE
hi! SyntasticWarningSign guifg=#d787d7 gui=NONE ctermfg=176 cterm=NONE
" hi! SyntasticWarningLine ctermfg=92 cterm=NONE
hi! link YcmErrorSign SyntasticErrorSign
hi! link YcmErrorLine SyntasticErrorLine
hi! link YcmErrorSection SyntasticError
hi! link YcmWarningSign SyntasticWarningSign
" hi! link YcmWarningLine SyntasticWarningLine

" Build output
hi! build_error guifg=#d70000 gui=bold ctermfg=160 cterm=bold
hi! build_warning guifg=#d787d7 gui=bold ctermfg=176 cterm=bold
hi! build_note guifg=#4e4e4e gui=bold ctermfg=239 cterm=bold
hi! build_file guifg=#767676 gui=none ctermfg=243 cterm=none

hi! build_building guifg=#5fd700 gui=none ctermfg=76 cterm=none
hi! build_built guifg=#6c6c6c gui=none ctermfg=242 cterm=none
hi! build_linking guifg=#5fd700 gui=bold ctermfg=76 cterm=bold
hi! build_buildLine guifg=#5fafd7 gui=none ctermfg=74 cterm=none
hi! build_success guifg=#5fd700 gui=bold ctermfg=76 cterm=bold


" VimWiki
hi VimwikiHeaderChar guifg=#e09146 gui=bold ctermfg=173 cterm=NONE
hi VimwikiHeader1 guifg=#ff8700 gui=bold ctermfg=208 cterm=bold
hi VimwikiHeader2 guifg=#d75f00 gui=bold ctermfg=166 cterm=bold
hi VimwikiHeader3 guifg=#af5f00 gui=bold ctermfg=130 cterm=bold
hi VimwikiHeader4 guifg=#875f00 gui=bold ctermfg=94 cterm=bold
hi VimwikiHeader5 guifg=#875f00 gui=NONE ctermfg=94 cterm=NONE
hi VimwikiHeader6 guifg=#870000 gui=NONE ctermfg=58 cterm=NONE
hi VimwikiBold guifg=#ffffff ctermfg=231 cterm=bold
hi VimWikiCode guifg=#d787d7 ctermfg=176
hi VimWikiPre guifg=#dfafdf ctermfg=182
hi VimwikiCellSeparator guifg=#5f5f5f ctermfg=59
hi VimwikiHR guifg=#5f5f5f gui=bold ctermfg=240 cterm=bold
hi VimwikiLink guifg=#5f5fff gui=underline ctermfg=45 cterm=underline
hi VimwikiListTodo guifg=#87af00 gui=NONE ctermfg=106 cterm=NONE

hi! link htmlH1 VimwikiHeader1
hi! link htmlH2 VimwikiHeader2
hi! link htmlH3 VimwikiHeader3
hi! link htmlH4 VimwikiHeader4
hi! link htmlH5 VimwikiHeader5
hi! link htmlItalic VimwikiBold
hi! link mkdCode VimwikiCode

" Diffs
" -----
hi DiffAdd                   guifg=#e4e4e4 guibg=#005f00 ctermfg=254 ctermbg=22
hi DiffDelete                guifg=#000000 guibg=#5f0000 gui=bold ctermfg=16 ctermbg=52 cterm=bold
hi DiffChange                guibg=#1c1c1c ctermbg=234
hi DiffText                  guifg=#FFFFFF guibg=#5f0087 gui=bold ctermfg=15 ctermbg=54 cterm=bold

hi diffAdded                 guifg=#008700 ctermfg=28
hi diffRemoved               guifg=#800000 ctermfg=1
hi diffNewFile               guifg=#FFFFFF guibg=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi diffFile                  guifg=#FFFFFF guibg=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold


" Ruby
" ----
hi rubyTodo                  guifg=#df5f5f guibg=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
hi rubyClass                 guifg=#FFFFFF ctermfg=15
hi rubyConstant              guifg=#df5f5f ctermfg=167
hi rubyInterpolation         guifg=#FFFFFF ctermfg=15
hi rubyBlockParameter        guifg=#dfdfff ctermfg=189
hi rubyPseudoVariable        guifg=#ffdf5f ctermfg=221
hi rubyStringDelimiter       guifg=#87af5f ctermfg=107
hi rubyInstanceVariable      guifg=#dfdfff ctermfg=189
hi rubyPredefinedConstant    guifg=#df5f5f ctermfg=167
hi rubyLocalVariableOrMethod guifg=#dfdfff ctermfg=189

" Python
" ------
hi pythonExceptions          guifg=#ffaf87 ctermfg=216
hi pythonDoctest             guifg=#8787ff ctermfg=105
hi pythonDoctestValue        guifg=#87d7af ctermfg=115

" Mail
" ----
hi mailEmail                 guifg=#87af5f ctermfg=107 gui=italic cterm=underline
hi mailHeaderKey             guifg=#ffdf5f ctermfg=221
hi! link mailSubject mailHeaderKey

" Spell
" ----
hi SpellBad                  guifg=#D70000 guibg=NONE gui=undercurl ctermfg=160 ctermbg=NONE cterm=underline
hi SpellRare                 guifg=#df5f87 guibg=NONE gui=underline ctermfg=168 ctermbg=NONE cterm=underline
hi SpellCap                  guifg=#dfdfff guibg=NONE gui=underline ctermfg=189 ctermbg=NONE cterm=underline
hi SpellLocal                guifg=#00FFFF guibg=NONE gui=undercurl ctermfg=51 ctermbg=NONE cterm=underline
hi MatchParen                guifg=#FFFFFF guibg=#005f5f ctermfg=15 ctermbg=23

" XML
" ---
hi xmlTag                    guifg=#dfaf5f ctermfg=179
hi xmlTagName                guifg=#dfaf5f ctermfg=179
hi xmlEndTag                 guifg=#dfaf5f ctermfg=179

" HTML
" ----
hi! link htmlTag              xmlTag
hi! link htmlTagName          xmlTagName
hi! link htmlEndTag           xmlEndTag

hi checkbox guifg=#3a3a3a guibg=NONE gui=NONE ctermfg=237 ctermbg=NONE cterm=NONE
hi checkboxDone guifg=#5fff00 guibg=NONE gui=BOLD ctermfg=82 ctermbg=NONE cterm=BOLD
hi checkboxNotDone guifg=#005fdf guibg=NONE gui=BOLD ctermfg=26 ctermbg=NONE cterm=BOLD


highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
