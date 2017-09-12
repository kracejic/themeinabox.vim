
syntax keyword Statement Certificate
syntax keyword Special Data Signature Algorithm Issuer Digital Public key Subject Validity Version Serial Number Modulus Netscape Comment Cert Type Extended Key Usage extensions

syntax match Special "\<X[0-9]\+v*[0-9]*\>"

syntax match Comment "^\s*\<[0-9a-f][0-9a-f]:[0-9a-f][0-9a-f]:[0-9a-f:]*"

syntax match Todo "\<C=[^,^/]*\>" contains=_value
syntax match Todo "\<CA=[^,^/]*\>" contains=_value
syntax match Todo "\<L=[^,^/]*\>" contains=_value
syntax match Todo "\<C=[^,^/]*\>" contains=_value
syntax match Todo "\<OU=[^,^/]*\>" contains=_value
syntax match Todo "\<O=[^,^/]*\>" contains=_value
syntax match Todo "\<ST=[^,^/]*\>" contains=_value
syntax match Todo "\<CN=[^,^/]*\>" contains=_value
syntax match Keyword "\<name=[^,^/]*\>" contains=_value
syntax match Keyword "\<emailAddress=[^,^/]*\>" contains=_value

syntax match _equal "=" contained
syntax match _value "=[^,^/]*\>" contained contains=_equal

syntax region _comment start="-\+BEGIN CERTIFICATE-----\+" end="-\+END CERTIFICATE-\+$"

hi! link _value Type
hi! link _comment Comment
hi! link _equal String

