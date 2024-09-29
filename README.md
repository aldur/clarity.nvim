# `clarity.nvim`

Integrate [Clarity smart contract language](https://clarity-lang.org) in Neovim.
This plugin adds:

- `.clar` filetype definition.
- [Treesitter grammar](https://github.com/xlittlerag/tree-sitter-clarity).
  - Context queries if
    [`romgrk/nvim-treesitter-context`](https://github.com/romgrk/nvim-treesitter-context)
    is installed.
- The [`clarinet`
  LSP](https://github.com/hirosystems/clarinet/tree/main/components/clarity-lsp)
  through [`nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig).

## Requirements

This plugin requires:

- `nvim` (>= 0.9.2, see `nvim-treesitter`)
- `nvim-treesitter/nvim-treesitter`

To get LSP support, you'll also need `neovim/nvim-lspconfig` (install through
your favorite `nvim` package manager) and `clarinet` (available through your OS
package manager).

To get optional Treesitter context, also install
`romgrk/nvim-treesitter-context`.

## Install

If using `vim-plug`:

```vim
" Dependencies
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'}

" This plugin
Plug 'aldur/clarity.nvim', { 'do': ':TSInstall clarity'}

" Optional dependencies
Plug 'neovim/nvim-lspconfig'  " `brew install clarinet`
Plug 'romgrk/nvim-treesitter-context'  " context support
```

## Additional goodies

[Here](https://github.com/aldur/dotfiles/blob/master/various/ctags/clarity.ctags)
you'll find the `clarity` language specification for
[`universal-ctags`](https://github.com/universal-ctags/ctags).

## Related projects

[`vim-clarity`][vim-clarity] provides syntax highlighting, linting, and deploy
capabilities. It relies on `vim` syntax highlights and a custom CLI tool for
linting.

[vim-clarity]: https://github.com/alexkeating/vim-clarity
