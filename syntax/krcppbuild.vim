syntax match build_error "\<error\>"
syntax match build_warning "\<warning\>"
syntax match build_note "\<note:"
syntax match build_file "\S*:[0-9][0-9]*:*"
syntax match build_make "^make\>"
syntax match build_warning "^[- ]*\^"
syntax match build_comment "^--"


syntax match build_building "Building .*" contained
syntax match build_linking "Linking .*" contained
syntax match build_built "Built .*" contained
syntax match build_buildLine "^\[.*\] \zs.*\ze$" contains=build_building,build_linking,build_built,build_rest

syntax match build_error "\*\*\*Failed"
syntax match build_error "\<failed\>"
syntax match build_error "\<Failed\>"
syntax match build_error "\<FAILED\>"
syntax match build_passed "\<Passed\>"
syntax match build_passed "\<passed\>"
syntax match build_passed "\<PASSED\>"
syntax match build_passed "\<build complete\>"
syntax match build_passed "All tests passed"
syntax match build_passed "^100% tests passed, 0 tests failed"
syntax match build_error "^[0-9][0-9]% tests passed"

syntax match build_warning "Create package using.*$"
syntax match build_note "^CPack:"

hi link build_make Function
hi link build_passed build_success
hi link build_comment Comment

let b:current_syntax = 'simple'

