# `clarity.nvim`

Integrate the [Clarity smart contract language][0] in Neovim.

<img width="971" alt="An Neovim window editing Clarity code highlighted through Tree-sitter" src="https://github.com/user-attachments/assets/f7a0b046-85cb-485d-9afe-b29f6157b3c9">

This plugin adds:

- A `.clar` filetype definition.
- The [Clarity Tree-sitter grammar][1].
  - Context queries for [`romgrk/nvim-treesitter-context`][2], if installed.

[`nvim-lspconfig`][4] includes support for the [`clarinet` LSP][3].

## Requirements

This plugin requires:

- `nvim` (>= 0.9.2, see `nvim-treesitter`)
- `nvim-treesitter/nvim-treesitter`

To get LSP support, you'll also need `neovim/nvim-lspconfig` installed and
`clarinet` available on `PATH` (available through your OS package manager).

To get optional Tree-sitter context, you can also install
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

[Here][5] you can find the `clarity` language specification for
[`universal-ctags`][6].

## Related projects

[`vim-clarity`][vim-clarity] provides syntax highlighting, linting, and deploy
capabilities. It relies on `vim` syntax highlights and a custom CLI tool for
linting.

[vim-clarity]: https://github.com/alexkeating/vim-clarity

[0]: https://clarity-lang.org
[1]: https://github.com/xlittlerag/tree-sitter-clarity
[2]: https://github.com/romgrk/nvim-treesitter-context
[3]: https://github.com/hirosystems/clarinet/tree/main/components/clarity-lsp
[4]: https://github.com/neovim/nvim-lspconfig
[5]: https://github.com/aldur/dotfiles/blob/master/various/ctags/clarity.ctags
[6]: https://github.com/universal-ctags/ctags
