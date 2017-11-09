
syntax match Folded "^Name:.*"
syntax match Folded "^Type:.*"
syntax match Comment "--*-"
syntax match Operator "[,()&*:]"

syntax keyword Type int long void char unsigned short int8_t int16_t int32_t int64_t uint8_t uint16_t uint32_t uint64_t string const

syntax match String "@\<\(param\s*\S*\|return\|author\|version\|since\|throws\|exception\)\>"

