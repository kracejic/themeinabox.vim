syntax match _task_view1 "^=.*=$" contains=_task_view_filter,_task_view_char
syntax match _task_view2 "^==.*==$" contains=_task_view_filter,_task_view_char
syntax match _task_view3 "^===.*===$" contains=_task_view_filter,_task_view_char
syntax match _task_view4 "^====.*====$" contains=_task_view_filter,_task_view_char
syntax match _task_view5 "^=====.*=====$" contains=_task_view_filter,_task_view_char
syntax match _task_view6 "^======.*======$" contains=_task_view_filter,_task_view_char
syntax match _task_view_filter "|[^=]*" contained
syntax match _task_view_char "=" contained

syntax match Comment "{ }"
syntax match Member "{[.]}"
syntax match Type "{o}"
syntax match Preproc "{O}"
syntax match Special "{[xX]}"
syntax match Operator "{[cC]}"
syntax match Folded "{[?]}"

syntax match Special "YES" containedin=VimwikiTableRow
syntax match Operator "NO" containedin=VimwikiTableRow
syntax match Comment "-" containedin=VimwikiTableRow
syntax match Comment "N/A" containedin=VimwikiTableRow

syntax match String "QUESTION"
syntax match Todo "TODO"

hi! link _task_view1 VimwikiHeader1
hi! link _task_view2 VimwikiHeader2
hi! link _task_view3 VimwikiHeader3
hi! link _task_view4 VimwikiHeader4
hi! link _task_view5 VimwikiHeader5
hi! link _task_view6 VimwikiHeader6

hi! link _task_view_filter Comment
hi! link _task_view_char VimwikiHeaderChar

syntax region _blueColor start="@b " end="_"
hi! link _blueColor String
syntax region _greenColor start="@g " end="_"
hi! link _greenColor Special
syntax region _redColor start="@r " end="_"
hi! link _redColor Todo

