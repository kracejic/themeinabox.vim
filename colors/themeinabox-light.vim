" Vim color file - themeinabox
" Generated by http://bytefluent.com/vivify 2016-06-06
set background=light
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
syntax reset

set t_Co=256
let g:colors_name = "themeinabox-light"

function! CSyntaxAfter()
    syntax keyword Boolean true false NULL TRUE FALSE
    syntax keyword Statement namespace stderr stdin stdout new this delete default not or and xor nullptr override final

    syntax match _Block "[{}]"
    syntax match _Bracket "[\[\]]"
    syntax match _OperatorComparison "[<>=!]"
    syntax match _Operator "[-+&|=\/~.,;:*%&^?]"
    syntax match _Operator "->"
    syntax match _OperatorComparison "=="
    syntax match _OperatorComparison "<="
    syntax match _Todo "\<\(todo\|TODO\|fix\|FIX\|FIXME\)\>" contained
    syntax match _Note "\<NOTE\>" contained
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

    hi _Block guifg=yellow1 guibg=NONE gui=none
    hi link _Bracket Constant
    hi link _Operator Operator
    hi link _OperatorComparison OperatorComparison
    hi link _Comment Comment
    hi link _Define cIncluded
    hi link _DefineArg Identifier
    hi! link _Default Statement
    hi! link _Todo Todo
    hi! link _Note String
    hi! link _Doc cIncluded
    " hi! link _Comment_bold VimwikiBold
endfunction

autocmd! FileType c,cpp,java,php call CSyntaxAfter()


hi Operator                  guifg=#e88958 ctermfg=173
hi OperatorComparison        guifg=#e86524 ctermfg=166

hi Normal                    guifg=#262626 guibg=#ffffff ctermfg=235 ctermbg=231
hi Search                    guifg=#000000 guibg=#c6c6c6 ctermfg=0 ctermbg=251 cterm=NONE
hi Visual                    guibg=#ffdf87 ctermbg=222
hi LineNr                    guifg=#666666 ctermfg=242
hi Cursor                    guifg=#1c1c1c guibg=#c6c6c6 ctermfg=234 ctermbg=251
hi CursorLine                guibg=#ffffdf gui=NONE ctermbg=230 cterm=NONE
hi CursorLineNr              guifg=#080808 gui=NONE ctermfg=232 cterm=NONE
hi ColorColumn               guibg=#1c1c1c ctermbg=234
hi! link CursorColumn ColorColumn
hi VertSplit                 guifg=#444444 guibg=#bcbcbc gui=NONE ctermfg=238 ctermbg=250 cterm=NONE
hi SignColumn                guifg=#FFFFFF guibg=NONE ctermfg=15 ctermbg=NONE

hi cInclude                  guifg=#49515c ctermfg=239
hi cIncluded                 guifg=#637285 ctermfg=60

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
hi Folded                    guifg=#af5fd7 guibg=#ffffff gui=NONE ctermfg=134 ctermbg=231 cterm=NONE
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
" hi Todo                      guifg=#000000 guibg=ffff00 gui=bold ctermfg=16 ctermbg=11 cterm=bold
hi Constant                  guifg=#d75faf ctermfg=169
hi Error                     guifg=#FFFFFF guibg=#990000 ctermfg=221 ctermbg=88
hi WarningMsg                guifg=#800000 guibg=NONE ctermfg=1 ctermbg=NONE
hi Identifier                guifg=#afaf00 gui=NONE ctermfg=142 cterm=NONE
hi Keyword                   guifg=#e09146 gui=NONE ctermfg=173 cterm=NONE
hi Number                    guifg=#875fd7 ctermfg=98
hi Statement                 guifg=#d78700 gui=NONE ctermfg=172 cterm=NONE
hi String                    guifg=#8787ff ctermfg=105
"hi Title                     guifg=#FFFFFF ctermfg=15
hi! link Title Statement
hi Type                      guifg=#dfaf00 gui=NONE ctermfg=178 cterm=NONE
hi PreProc                   guifg=#ff8700 ctermfg=208
hi Special                   guifg=#afd75f ctermfg=149
hi cParen                   guifg=#afd75f ctermfg=149

" C++
" ---

"hi cppSTLnamespace          guifg=#a6e043 gui=NONE ctermfg=149 cterm=NONE
hi! link cppSTLnamespace normal
hi! link cppSTLconstant normal
hi! link cPreCondit cIncluded
hi! link cDefine cIncluded
hi! link cUserLabel cIncluded

" Syntastic

hi! SyntasticErrorSign guifg=#d70000 gui=NONE ctermfg=160 cterm=bold
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
hi VimwikiBold guifg=#5f0087 ctermfg=54 cterm=bold
hi VimWikiCode guifg=#af005f ctermfg=125
hi VimWikiPre guifg=#af0087 ctermfg=126
hi VimwikiCellSeparator guifg=#5f5f5f ctermfg=59
hi VimwikiHR guifg=#5f5f5f gui=bold ctermfg=240 cterm=bold
hi VimwikiLink guifg=#5f5fff gui=underline ctermfg=63 cterm=underline
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
hi DiffAdd                   guifg=#1c1c1c guibg=#afff87 ctermfg=234 ctermbg=156
hi DiffDelete                guifg=#303030 guibg=#ffaf5f ctermfg=236 ctermbg=215
hi DiffChange                guibg=#ffffff ctermbg=15
hi DiffText                  guifg=#1c1c1c guibg=#ff87ff gui=bold ctermfg=234 ctermbg=213 cterm=bold

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
