return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            {
                "<leader>b",
                function()
                    require("telescope.builtin").buffers()
                end,
                mode = "n",
                desc = "Find Buffers",
            },

            {
                "<c-b>",
                function()
                    require("telescope.builtin").buffers()
                end,
                mode = "i",
                desc = "Find Buffers",
            },
        },
        opts = function()
            local actions = require("telescope.actions")
            return {
                pickers = {
                    buffers = {
                        mappings = {
                            i = {
                                ["<c-d>"] = actions.delete_buffer
                                    + actions.move_to_top,
                            },
                            n = {
                                ["dd"] = actions.delete_buffer
                                    + actions.move_to_top,
                            },
                        },
                    },
                },
            }
        end,
    },
}
