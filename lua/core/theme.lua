local M = {}

local theme_file = vim.fn.stdpath("config") .. "/theme.json"
local fallback = "kanagawa"

function M.load_colorscheme()
    local ok, json = pcall(vim.fn.readfile, theme_file)
    if ok and json and #json > 0 then
        local status, decoded =
            pcall(vim.fn.json_decode, table.concat(json, "\n"))
        if status and decoded and decoded.colorscheme then
            return decoded.colorscheme
        end
    end
    return fallback
end

function M.save_colorscheme(theme)
    local ok, file = pcall(io.open, theme_file, "w")
    if ok and file then
        file:write(vim.fn.json_encode({
            colorscheme = theme,
        }))
        file:close()
        vim.notify("Theme saved: " .. theme, vim.log.levels.INFO)
    else
        vim.notify("Error while saving theme!", vim.log.levels.ERROR)
    end
end

function M.apply()
    local theme = M.load_colorscheme()
    pcall(vim.cmd.colorscheme, theme)
end

return M
