# vim-cargo-make

Vim syntax for [cargo-make](https://github.com/sagiegurari/cargo-make).

TODO: Screenshot

## Features

* Injects highlighting for sh/bash, Duckscript, and Rust if scripts have
  appropriate shebang lines.
  * NOTE: Rust highlighting requires the comment `//@rust` instead of a normal
    shebang as Rust doesn't understand comments that start with `#`.
* Highlights variable expansions
* Highlights built-in functions

## Installation

`vim-cargo-make` builds on [`cespare/vim-toml`](https://github.com/cespare/vim-toml)
for syntax highlighting and won't work without it installed either directly or
available indirectly through a project like
[`vim-polyglot`](https://github.com/sheerun/vim-polyglot).

I also recommend installing [`vim-duckscript`](https://github.com/nastevens/vim-duckscript)
for Duckscript highlighting.

### vim-plug (recommended)

Set up [vim-plug](https://github.com/junegunn/vim-plug). In your .vimrc:

```vim
call plug#begin()

Plug 'nastevens/vim-cargo-make'

" TOML highlighting based on cespare/vim-toml needs to be available
Plug 'cespare/vim-toml'  " -- OR --
Plug 'sheerun/vim-polyglot'

" Recommended install to get duckscript highlighting
Plug 'nastevens/vim-duckscript'

call plug#end()
```

Reload your .vimrc and run `:PlugInstall`.

### Vundle

Set up [Vundle](https://github.com/VundleVim/Vundle.vim). In your .vimruc:

```vim
Plugin 'nastevens/vim-cargo-make'

" TOML highlighting based on cespare/vim-toml needs to be available
Plugin 'cespare/vim-toml'  " -- OR --
Plugin 'sheerun/vim-polyglot'

" Recommended install to get duckscript highlighting
Plug 'nastevens/vim-duckscript'
```

Reload your .vimrc and run `:PluginInstall`.

## License

Licensed under the [MIT license](/LICENSE)

## Contributing

Contributions are always welcome! Please open a PR or Issue. Unless you
explicitly state otherwise, any contribution intentionally submitted for
inclusion in this work by you shall be licensed under the MIT license as
stated above, without any additional terms or conditions.
