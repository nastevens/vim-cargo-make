" Language:   Cargo-Make
" Maintainer: Nick Stevens <nick@bitcurry.com>
" URL:        https://github.com/nastevens/vim-cargo-make
" LICENSE:    MIT

if exists('b:current_syntax')
  finish
endif

" Start with the toml base
runtime! syntax/toml.vim

" Inject duckscript
try
  unlet! b:current_syntax
  syntax include @DUCK syntax/duckscript.vim
  syntax region cmScript contained contains=@DUCK containedin=tomlString keepend
      \ start="\v('''|\"\"\")\zs\_s{-}\#\!\@duckscript>"
      \ end="\v\ze('''|\"\"\")"
catch
endtry

" Inject sh/bash
try
  unlet! b:current_syntax
  syntax include @SH syntax/sh.vim
  syntax region cmScript contained contains=@SH containedin=tomlString keepend
      \ start="\v('''|\"\"\")\zs\_s{-}\#\!(\/usr\/bin\/env\s+|\/bin\/)(bash|sh)>"
      \ end="\v\ze('''|\"\"\")"
catch
endtry

" Inject rust
try
  unlet! b:current_syntax
  syntax include @RUST syntax/rust.vim
  syntax region cmScript contained contains=@RUST containedin=tomlString keepend
      \ start="\v('''|\"\"\")\zs\_s{-}\/\/\@rust>"
      \ end="\v\ze('''|\"\"\")"
catch
endtry

" Un-highlight dots in key names - this may be obsoleted by
" https://github.com/cespare/vim-toml/pull/52
syntax match cmDottedKey "\v[^.]+\zs\." contained containedin=tomlKey,tomlTable,tomlArrayTable display
highlight default link cmDottedKey Normal

" Variable expansion
syntax region cmVariable start='${' end='}' contained containedin=tomlString display
highlight default link cmVariable Define

" Built-in functions
syntax region cmFunction contained containedin=tomlString display
    \ matchgroup=cmFunctionName
    \ start="\v('|\")\zs\@\@(decode|getat|remove\-empty|split|trim)\("
    \ end="\V)"
highlight default link cmFunction Normal
highlight default link cmFunctionName Function

let b:current_syntax = 'cargo-make'
