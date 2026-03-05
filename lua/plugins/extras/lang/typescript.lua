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
                typescript = { "eslint_d", "prettierd", timeout_ms = 2000 },
                typescriptreact = { "eslint_d", "prettierd", timeout_ms = 2000 },
            },
        },
    },
}
