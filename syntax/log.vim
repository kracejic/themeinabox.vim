set nowrap

syntax match _LogModule "\<[a-zA-Z_0-9.]\+\>" contained
syntax match _LogModule2 "[a-zA-Z_0-9-[.\]]\+:" contained contains=_LogColumn
syntax match _Time "\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d,\d*" contained
syntax match _Time "[A-Z][a-z][a-z] \d* \d\d:\d\d:\d\d" contained
syntax match _LogFunction "\[[^]]*\]" contained
syntax match _LogColumn ":" contained

syntax match _LogHead "^\d.*  - " contains=_LogModule,_LogFunction,_InfoLevel,_Time,_LogError

" syntax match _File "[a-zA-Z0-9.-_/]*:\d\+"
syntax keyword _InfoLevel INFO DEBUG
syntax keyword _LogError ERROR error Error Exception Fail fail FAIL Failure failure FAILURE Failed failed FAILED
syntax keyword _LogError Exception exception
syntax keyword _LogError fail Fail FAIL failure Failure FAILURE failed Failed FAILED
syntax keyword _LogWarning WARN Exception Warn warn warning Warning WARNING
syntax keyword _LogOK ok OK done DONE Done
syntax match _LogError "\<[a-zA-Z0-9_.]*[eE]xception"



" Journalctl
syntax match _LogHead "^[A-Z][a-z][a-z] \d* [0-9:]*[^:]*:" contains=_Time,_LogModule2


hi! link _LogHead cIncluded
hi! link _Time Comment
hi! link _LogColumn Comment
hi! link _InfoLevel Statement
hi! link _LogFunction  Number
hi! link _LogModule  Special
hi! link _LogModule2  Special
hi! link _File  String
hi! link _LogError red
hi! link _LogWarning warn
hi! link _LogOK green


