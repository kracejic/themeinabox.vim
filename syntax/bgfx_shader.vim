if exists('b:current_syntax')
  finish
endif

" Build on Vim's stock GLSL syntax, then add bgfx-specific tokens.
source $VIMRUNTIME/syntax/glsl.vim

syn match bgfxShaderDirective /^\s*\$\%(input\|output\)\>/

syn keyword bgfxShaderMacro
      \ ARRAY_BEGIN ARRAY_END CONST REGISTER
      \ SAMPLER2D SAMPLER2DARRAY SAMPLER2DARRAYSHADOW SAMPLER2DMS SAMPLER2DMSARRAY
      \ SAMPLER2DSHADOW SAMPLER3D SAMPLERCUBE SAMPLERCUBEARRAY SAMPLERCUBESHADOW
      \ ISAMPLER2D ISAMPLER3D USAMPLER2D USAMPLER3D

syn match bgfxShaderSemantic /:\s*\zs\%(POSITION\|NORMAL\|TANGENT\|BITANGENT\|COLOR\%(\d\+\)\?\|TEXCOORD\d\+\|SV_POSITION\)\>/

hi def link bgfxShaderDirective cIncluded
hi def link bgfxShaderMacro Identifier
hi def link bgfxShaderSemantic cIncluded

let b:current_syntax = 'bgfx_shader'
