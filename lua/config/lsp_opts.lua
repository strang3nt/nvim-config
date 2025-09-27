vim.diagnostic.config({
    virtual_text = true, -- Enable inline messages
    signs = true, -- Enable signs in the gutter
    underline = true, -- Enable underlines
    update_in_insert = false, -- Don't update diagnostics while in insert mode
    severity_sort = true, -- Sort diagnostics by severity
})
