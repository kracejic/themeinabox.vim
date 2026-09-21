syntax match cIncluded '@ifline_\w\+\|@ifinline_\w\+\|@if_\w\+\|@endif_\w\+\|@endif\|@else\|@import' containedin=mkdNonListItemBlock contains=NONE

syntax match cIncluded '@comment' containedin=Comment contains=NONE
syntax match Comment '@comment.*' containedin=mkdNonListItemBlock contains=cIncluded


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

syntax region _blueColor start="@b " end="_"
hi! link _blueColor String
syntax region _greenColor start="@g " end="_"
hi! link _greenColor Special
syntax region _redColor start="@r " end="_"
hi! link _redColor Todo

hi! link mkdHeading Comment
