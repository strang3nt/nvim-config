return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        main = "nvim-treesitter.configs",
        event = function()
            return { "BufReadPost", "BufWritePost", "BufNewFile" }
        end,
        opts_extend = { "ensure_installed" },
        opts = {
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "markdown",
                "markdown_inline",
            },
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        },
        build = ":TSUpdate",
    },
}

