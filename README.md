# nvim-config

This is my personal neovim config. It is a continuous
effort, as such, this README might be a little behind
the current state of the repository.

> Everything in this repository is done with intention and purpose.
> I will not include things I do not fully understand
> (or almost fully :) ).

## Separation of concerns

Thanks to lazy.nvim it is easy to separate plugins
configuration, which makes the project more mantainable.

Each language configuration lives in its own file in
`plugins/extras/lang` (inspired by LazyVim),
except for LSP configs, which are stored in `after/lsp`.

Each file in `lang` folder may add formatters, linters,
parsers, LSP servers and other language-specific configuration.
Mason-lspconfig installs and activates LSPs automatically.
Moreover, default configurations from nvim-lspconfig are applied,
and then overwritten by `after/lsp`, leveraging 
neovim's after-directory mechanism.

## Plugins and Structure

- lazy.nvim
- blink_cmp
- conform
- lualine
- mason & mason-lspconfig & nvim-lspconfig
- neo-tree
- toggleterm
- treesitter
- which-key

