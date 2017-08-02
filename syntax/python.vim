syntax keyword Type self

syntax match _Operator "[-+&|=\/~.,;:*%&^?]"
hi link _Operator Operator

syntax match _Bracket "[\[\]]"
syntax match _Bracket "[{}]"
hi link _Bracket Constant

syntax match _FunctionName "[a-zA-Z_][a-zA-Z0-9_]*[ ]*(" contains=_OpenParen
syntax match _OpenParen "(" contained
hi link _FunctionName Identifier
hi link _OpenParen Normal

syntax keyword _OperatorComparison not
syntax keyword Boolean True False None

syntax match _OperatorComparison "!="
syntax match _OperatorComparison "=="
syntax match _OperatorComparison "<="
syntax match _OperatorComparison ">="
hi link _OperatorComparison OperatorComparison




