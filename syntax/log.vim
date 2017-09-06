set nowrap

syntax match _LogModule "\<[a-zA-Z_0-9.]\+\>" contained
syntax match _Time "\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d,\d*" contained
syntax match _LogFunction "\[[^]]*\]" contained
syntax keyword _InfoLevel INFO DEBUG

syntax match _LogHead "^\d.*  - " contains=_LogModule,_LogFunction,_InfoLevel,_Time,_LogError

syntax match _File "[a-zA-Z0-9.-_/]*:\d\+"
syntax keyword _LogError ERROR WARN error Error Exception warn warning Warning WARNING
syntax match _LogError "\<[a-zA-Z0-9_.]*[eE]xception"





hi link _Time Comment
hi link _InfoLevel Statement
hi link _LogFunction  Constant
hi link _LogModule  Special
hi link _File  String
hi link _LogError Todo


