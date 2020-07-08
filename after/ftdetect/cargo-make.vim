" Language:   Cargo-Make
" Maintainer: Nick Stevens <nick@bitcurry.com>
" URL:        https://github.com/nastevens/vim-cargo-make
" LICENSE:    MIT

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufRead,BufNewFile Makefile.toml set filetype=cargo-make
