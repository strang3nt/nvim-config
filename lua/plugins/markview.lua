return {
    {
        "OXY2DEV/markview.nvim",
        lazy = false,
        dependencies = {
            "saghen/blink.cmp",
            "echasnovski/mini.icons",
        },
    },
    {
        "gunasekar/markview-smart-tables.nvim",
        dependencies = { "OXY2DEV/markview.nvim" },
        opts = {
            wrap_width = 0.9, -- max table width: fraction of the window (0<n<=1)
            -- or absolute column count (n>1)
            wrap_minwidth = 5, -- smallest a column may shrink to before long
            -- words are hard-broken
        },
    },
}
