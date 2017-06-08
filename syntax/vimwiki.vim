syntax match _task_view1 "^=.*=$" contains=_task_view_filter,_task_view_char
syntax match _task_view2 "^==.*==$" contains=_task_view_filter,_task_view_char
syntax match _task_view3 "^===.*===$" contains=_task_view_filter,_task_view_char
syntax match _task_view4 "^====.*====$" contains=_task_view_filter,_task_view_char
syntax match _task_view5 "^=====.*=====$" contains=_task_view_filter,_task_view_char
syntax match _task_view6 "^======.*======$" contains=_task_view_filter,_task_view_char
syntax match _task_view_filter "|[^=]*" contained
syntax match _task_view_char "=" contained


hi! link _task_view1 VimwikiHeader1
hi! link _task_view2 VimwikiHeader2
hi! link _task_view3 VimwikiHeader3
hi! link _task_view4 VimwikiHeader4
hi! link _task_view5 VimwikiHeader5
hi! link _task_view6 VimwikiHeader6

hi! link _task_view_filter Comment
hi! link _task_view_char VimwikiHeaderChar
