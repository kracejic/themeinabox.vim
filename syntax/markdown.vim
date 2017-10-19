
syntax match String "\\\S*" containedin=mkdNonListItemBlock

syntax region _PlantUml matchgroup=Comment start="\\startuml" end="\\enduml" containedin=mkdNonListItemBlock

syntax keyword Type frame interface package node folder cloud database containedin=_PlantUml

syntax match OperatorComparison "[-<.][.rlud-]*[-.>]" containedin=_PlantUml
syntax match Operator "[:{}\[\]]" containedin=_PlantUml

hi! link _PlantUml VimWikiPre

