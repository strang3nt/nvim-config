return {
    {
        "kevinhwang91/nvim-ufo",
        dependencies = { "kevinhwang91/promise-async" },
        opts = {

            keys = {
                {
                    "zR",
                    function()
                        require("ufo").openAllFolds()
                    end,
                    mode = "n",
                    desc = "Ufo open all folds",
                },

                {
                    "zM",
                    function()
                        require("ufo").closeAllFolds()
                    end,
                    mode = "n",
                    desc = "Ufo close all folds",
                },
            },
            provider_selector = function(_, _, _)
                return { "treesitter", "indent" }
            end,
        },
    },
}
