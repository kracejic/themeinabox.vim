syntax match cIncluded '@ifinline_devel\|@if_devel\|@endif_devel\|@ifinline_etsi\|@if_etsi\|@endif_etsi\|@ifinline_wave\|@if_wave\|@endif_wave' containedin=mkdNonListItemBlock contains=NONE

syntax match String "\\\S*" containedin=mkdNonListItemBlock

syntax region _PlantUml matchgroup=Comment start="\\startuml" end="\\enduml" containedin=mkdNonListItemBlock

syntax keyword Type frame interface package node folder cloud database containedin=_PlantUml

syntax match OperatorComparison "[-<.][.rlud-]*[-.>]" containedin=_PlantUml
syntax match Operator "[:{}\[\]]" containedin=_PlantUml

hi! link _PlantUml VimWikiPre

syntax match String "QUESTION" containedin=mkdListItemLine
syntax match Comment "NOTE" containedin=mkdListItemLine
syntax match Comment "MAYBE" containedin=mkdListItemLine
syntax match Todo "TODO" containedin=mkdListItemLine
syntax match String "QUESTION" containedin=mkdNonListItemBlock
syntax match Comment "NOTE" containedin=mkdNonListItemBlock
syntax match Comment "MAYBE" containedin=mkdNonListItemBlock
syntax match Todo "TODO" containedin=mkdNonListItemBlock
syntax match String "QUESTION" containedin=mkdBlockquote
syntax match Comment "NOTE" containedin=mkdBlockquote
syntax match Comment "MAYBE" containedin=mkdBlockquote
syntax match Todo "TODO" containedin=mkdBlockquote

syntax region _blueColor start="@b " end="_"
hi! link _blueColor String
syntax region _greenColor start="@g " end="_"
hi! link _greenColor Special
syntax region _redColor start="@r " end="_"
hi! link _redColor Todo
