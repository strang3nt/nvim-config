return {

  {
    "mason-org/mason-lspconfig.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "gopls",
      })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "go",
      })
    end,
  },
}
