-- settings for lua-language-server can be found on https://luals.github.io/wiki/settings/
return {
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            hint = {
                enable = true,
            },
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
}
