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

## Further notes

### Typescript formatting and linting

The typescript formatter _Prettier_ and linter _eslint_ of (my) choice are
extremely slow. Plugin `conform` offers a nice interface for managing LSPs
and formatters formatting capabilities (eslint can perform some linting
automatically). Formatting is normally performed on save (`:w`) with a time
limit of 500ms, which is not enough to run both prettier and eslint.

> Note that 500ms is the time the plugins waits for the formatting to complete:
> should the process take less, the buffer is frozen for the whole time anyway.

The default time limit is small enough as to not make
the editor feel frozen whenever I save. A custom 2000ms time limit is set
_only_ for typescript.
The `format_on_save` configuration parameter is provided as a function

```lua
format_on_save = function(_)
    return { timeout_ms = 500 }
end,
```

and in the typescript configuration file, 
<lua/plugins/extras/lang/typescript.lua>, where `conform` configuration is
augmented, I "overload"/"decorate" the `format_on_save` configuration parameter
by checking whether the current buffer is a typescript file and if so,
behave accordingly.

```lua
{
    "stevearc/conform.nvim",
    opts = { --[[...--]] },
    config = function(_, opts)
        local base_config = opts.format_on_save

        opts.format_on_save = function(bufnr)
            local ft = vim.bo[bufnr].filetype
            local config = base_config(bufnr)

            if ft == "typescript" or ft == "typescriptreact" then
                config.timeout_ms = 2000
            end

            return config
        end

        require("conform").setup(opts)
    end,
}
```

