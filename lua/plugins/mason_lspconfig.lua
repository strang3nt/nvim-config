return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts_extend = { "ensure_installed" },
        opts = {
            ensure_installed = {},
        },
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
    }
}