# `clarity.nvim`

Integrate the [Clarity smart contract language][0] in Neovim.

<img width="971" alt="An Neovim window editing Clarity code highlighted through Tree-sitter" src="https://github.com/user-attachments/assets/f7a0b046-85cb-485d-9afe-b29f6157b3c9">

This plugin adds:

- A `.clar` filetype definition.
- The [Clarity Tree-sitter grammar][1].
  - Context queries for [`romgrk/nvim-treesitter-context`][2], if installed.

[`nvim-lspconfig`][4] includes support for the [`clarinet` LSP][3]. Add
`vim.lsp.enable('clarinet')` to your configuration to enable it.

## Requirements

This plugin requires:

- `nvim` (>= 0.11.0)
- `nvim-treesitter/nvim-treesitter` on its [`main` branch][7] and all its
  dependencies
  - The `0.2.0` tag of this plugin is the last one to support older
    `nvim-treesitter` releases.

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
Plug 'neovim/nvim-lspconfig'  " `brew install clarinet`, then `vim.lsp.enable('clarinet')`
Plug 'romgrk/nvim-treesitter-context'  " context support
```

## Related projects

[`vim-clarity`][vim-clarity] provides syntax highlighting, linting, and deploy
capabilities. It relies on `vim` syntax highlights and a custom CLI tool for
linting.

The `clarity` language specification for [`universal-ctags`][6] is
[here][5]. It was developed before the LSP supported "go-to-reference". There
should be no need for it now.

[vim-clarity]: https://github.com/alexkeating/vim-clarity

[0]: https://clarity-lang.org
[1]: https://github.com/xlittlerag/tree-sitter-clarity
[2]: https://github.com/romgrk/nvim-treesitter-context
[3]: https://github.com/hirosystems/clarinet/tree/main/components/clarity-lsp
[4]: https://github.com/neovim/nvim-lspconfig
[5]: https://github.com/aldur/dotfiles/blob/master/various/ctags/clarity.ctags
[6]: https://github.com/universal-ctags/ctags
[7]: https://github.com/nvim-treesitter/nvim-treesitter/tree/main?tab=readme-ov-file
