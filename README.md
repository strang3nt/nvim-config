# nvim-config

This is my personal neovim config. It is a continuous
effort, as such, this README might be a little behind
the current state of the repository.

## Requirements

- neovim (0.11+)
- [ueberzugpp](https://github.com/jstkdng/ueberzugpp), image visualization

## Custom commands

Leader key `<leader>` is set to space key `spc`.

### Normal mode

| Command | Description |
|-----|-------------|
| `spc + t + f` | Opens Telescope file selector |
| `spc + t + b` | Opens Telescope buffer selector |
| `spc + t + c` | Opens Telescope theme selector |
| `spc + t + g` | Opens Telescope live grep tool |
| `spc + f` | Formats current buffer |
| `spc + o` | Toggles code outline |
| `spc + j` | Toggles terminal emulator |
| `spc + b + d` | Deletes current buffer

### Insert mode

| Command | Description |
|-----|-------------|
| `<c-b>` | Opens Telescope buffer selector |

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
| `outline` | Toggles code outline |
| `nvim_ufo` | Toggles folds |
| `image.nvim` | Image visualization inside terminal |
| `lazydev` | Loads automagically type signatures into LuaLS |

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

