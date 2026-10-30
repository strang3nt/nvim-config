return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "rust",
            })
        end,
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "rust_analyzer",
            })
        end,
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                rust = { "rustfmt" },
            },
        },
    },
}
