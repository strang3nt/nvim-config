local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.autoindent = false
opt.expandtab = true
opt.smartindent = false
opt.tabstop = 2
opt.shiftwidth = 2
opt.cursorline = true
opt.ignorecase = true
opt.splitright = true
opt.splitbelow = true
opt.colorcolumn = { 80, 100, 120 }
opt.wrap = true

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99
opt.foldcolumn = "1"
opt.foldlevel = 99
opt.foldenable = true

opt.clipboard = "unnamedplus"
