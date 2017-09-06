syntax keyword Constant on off ON OFF true false default

syntax match _path "\<[a-zA-Z_\-0-9./]\+\>" contained
syntax match Number "\<[0-9]\+\>"
syntax match Number "\<[0-9]*[.][0-9]\+\>"

syntax match Constant "[\[\]]"
syntax match OperatorComparison "[+-]"
syntax match Operator "="

syntax match _assigment "^[^ ^=]* " contains=Constant,_path,Number,Operator,OperatorComparison
syntax match _assigment "^[^ ^=]*$" contains=Constant,_path,Number,Operator,OperatorComparison
syntax match _assigment "^.*=" contains=Constant,_path,Number,Operator,OperatorComparison

syntax match Comment "^;.*"
syntax match Member "^\[.*\]" contains=Constant

hi! link _path Type
