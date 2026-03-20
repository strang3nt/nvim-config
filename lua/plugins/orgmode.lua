return {
    {
        "nvim-orgmode/orgmode",
        event = "VeryLazy",
        opts = {

            org_agenda_files = "~/orgfiles/**/*",
            org_default_notes_file = "~/orgfiles/refile.org",
            org_adapt_indentation = false,
            org_startup_folded = "showeverything",
        },
        config = function(_, opts)
            require("orgmode").setup(opts)
            vim.lsp.enable("org")
        end,
    },
}
