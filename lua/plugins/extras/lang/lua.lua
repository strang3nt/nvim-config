return {

    {
        "mason-org/mason-lspconfig.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "lua_ls",
            })
        end,
    },

    {
        "mason-org/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "stylua",
            })
        end,
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
            },
        },
    },
}
