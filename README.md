# nvim-config

This is my personal neovim config. It is a continuous
effort, as such, this README might be a little behind
the current state of the repository.

## Requirements

- neovim (0.11+)

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

## Custom keys

### Normal mode

| Key | Description |
|-----|-------------|
| `space + f + f` | Opens Telescope file selector |
| `space + b` | Opens Telescope buffer selector |
| `space + c + s` | Opens Telescope theme selector |
| `space + f + g` | Opens Telescope live grep tool |

## Plugins and Structure

- `lazy.nvim`
- `blink_cmp`
- `conform`
- `lualine`
- `mason & mason-lspconfig & nvim-lspconfig`
- `neo-tree`
- `toggleterm`
- `treesitter`
- `which-key`

