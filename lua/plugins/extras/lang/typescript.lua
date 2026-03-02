return {

    {
        "mason-org/mason-lspconfig.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "ts_ls",
                "eslint",
            })
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "typescript",
            })
        end,
    },

    {
        "mason-org/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "prettierd",
                "eslint_d",
            })
        end,
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                typescript = { "eslint_d", "prettierd" },
                typescriptreact = { "eslint_d", "prettierd" },
            },
        },
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
    },
}
