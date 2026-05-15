# nvim-config

This is my personal neovim config. It is a continuous
effort, as such, this README might be a little behind
the current state of the repository.

## Requirements

- neovim (0.11+)
- [ueberzugpp](https://github.com/jstkdng/ueberzugpp), image visualization

## Keybinds

Leader key `<leader>` is set to space key `spc`.

### Normal mode

| Key | Description |
|-----|-------------|
| `spc + f + f` | Opens Telescope file selector |
| `spc + b` | Opens Telescope buffer selector |
| `spc + c + s` | Opens Telescope theme selector |
| `spc + f + g` | Opens Telescope live grep tool |
| `spc + o` | Toggles code outline |
| `spc + j` | Toggles terminal emulator |

## Plugins and Structure

| Plugin | Description |
|--------|-------------|
| `lazy.nvim` | Package manager |
| `blink_cmp` | Code completion, suggestions |
| `conform` | Formatting, linting |
| `lualine` | Status line |
| `mason`, `mason-lspconfig`, `nvim-lspconfig` | Package manager, language tooling | 
| `neo-tree` | File manager, navigation |
| `toggleterm.nvim` | Toggles terminals |
| `treesitter` | Language parser, coloring |
| `which-key` | Keys suggestions |
| `nvim-ufo` | Toggles code outline |
| `image.nvim` | Image visualization inside terminal |

### Configuration structure

The current configuration depends on `lazy.nvim` features.
Each language configuration lives in its own file in
`plugins/extras/lang` (inspired by LazyVim).
Files in `lang` folder may add formatters, linters,
parsers, LSP servers and other language-specific configuration.
`mason-lspconfig` installs and activates LSPs automatically.
Moreover, default configurations from `nvim-lspconfig` are applied,
and then overwritten by whatever is in `after/lsp`, leveraging 
neovim's after-directory mechanism.

