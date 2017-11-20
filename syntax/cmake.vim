
syntax keyword cmakeStatement target_include_directories set_property add_compile_options target_compile_definitions ExternalProject_Add target_compile_options

syntax keyword Keyword PUBLIC PRIVATE

hi! li cmakeStatement  Special
hi! li cmakeCommand  Special
hi! li ModeMsg Keyword
hi! li cmakeArguments Normal
hi! li cmakeGeneratorExpression Type

