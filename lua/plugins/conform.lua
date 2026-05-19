return {
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        keys = {
            {
                "<leader>f",
                function()
                    require("conform").format({ async = true })
                end,
                mode = "",
                desc = "Format buffer",
            },
        },

        ---@module "conform"
        ---@type conform.setupOpts
        opts = {

            default_format_opts = {
                lsp_format = "fallback",
                timeout_ms = 500,
            },

            format_on_save = function(_)
                return {}
            end,

            formatters = {
                shfmt = {
                    append_args = { "-i", "2" },
                },
            },
        },
        init = function()
            vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
        end,
    },
}
