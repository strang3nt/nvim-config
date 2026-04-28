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
                desc = "Telescope find Buffers",
            },

            {
                "<c-b>",
                function()
                    require("telescope.builtin").buffers()
                end,
                mode = "i",
                desc = "Telescope find Buffers",
            },
            {
                "<leader>ff",
                function()
                    require("telescope.builtin").find_files()
                end,
                mode = "n",
                desc = "Telescope find files",
            },
            {
                "<leader>cs",
                function()
                    require("telescope.builtin").colorscheme()
                end,
                mode = "n",
                desc = "Telescope colorscheme",
            },
            {
                "<leader>fg",
                function()
                    require("telescope.builtin").live_grep()
                end,
                mode = "n",
                desc = "Telescope live grep",
            },
        },
        opts = function()
            local actions = require("telescope.actions")
            return {
                pickers = {
                    colorscheme = {
                        enable_preview = true,
                        previewer = false,
                        layout_config = {
                            height = 0.4,
                            width = 0.5,
                        },
                        attach_mappings = function(_, map)
                            local action_state =
                                require("telescope.actions.state")
                            local theme_selector = require("core.theme")
                            local save_colorscheme = function(prompt_bufnr)
                                local selection =
                                    action_state.get_selected_entry()
                                local theme = selection.value
                                actions.close(prompt_bufnr)
                                vim.cmd.colorscheme(theme)
                                theme_selector.save_colorscheme(theme)
                            end
                            map("n", "<CR>", save_colorscheme)
                            map("i", "<CR>", save_colorscheme)
                            return true
                        end,
                    },

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
